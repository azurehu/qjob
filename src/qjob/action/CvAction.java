package qjob.action;


import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.expression.ParseException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import qjob.model.Cv;
import qjob.model.Pos_cv;
import qjob.model.User;
import qjob.service.CvService;

@Controller
public class CvAction {
    @Autowired
    CvService cvService; 
    @RequestMapping(value="cvInsert.action")
    public String cvInsert(HttpSession session,Cv cv,Model model,HttpServletResponse response){
    	//Integer userid = (Integer)session.getAttribute("userid");
    	//SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
    	User u = (User)session.getAttribute("user");
    	cv.setUsername(u.getUsername());
    	int insert = cvService.insertCv(cv);
    	if(insert==1){   		
    		model.addAttribute("msg","3秒后跳转到我的简历页面. . .");
    		response.setHeader("refresh", "5;url=selectCvBasic.action");
    		return "wait";
    	}else{
    		model.addAttribute("msg","创建失败请重新创建");
    		return "CVbasic";
    	}
    }
    @RequestMapping(value="selectCvBasic.action")
	public String selectCvBasic(Model model,HttpSession session){
		User u = (User)session.getAttribute("user");
		Cv c=cvService.selectByUserName(u.getUsername());
		if(c!=null){
		    	u.setCv(c);
		    	session.setAttribute("user",u);
		    	//教育经历
		    	Cv cs=cvService.cvStudy(u.getUsername());
		    		if(cs!=null&&cs.getCv_studyexpList()!=null){
		    			c.setCv_studyexpList(cs.getCv_studyexpList());
		    			u.setCv(c);
		    			session.setAttribute("user",u);
		    			session.setAttribute("study",cs.getCv_studyexpList());		    			
		    		}
		    		//工作经历
		    		Cv cw=cvService.cvWork(u.getUsername());
		    		if(cw!=null&&cw.getCv_workexpList()!=null){
		    			c.setCv_workexpList(cw.getCv_workexpList());
		    			u.setCv(c);
		    			session.setAttribute("user",u);
		    			session.setAttribute("work",cw.getCv_workexpList());
		    		}
		    		//项目经验
		    		Cv cp=cvService.cvPorject(u.getUsername());
		    		if(cp!=null&&cp.getCv_projectexpList()!=null){
		    			c.setCv_projectexpList(cp.getCv_projectexpList());
		    			u.setCv(c);
		    			session.setAttribute("user",u);
		    			session.setAttribute("p",cp.getCv_projectexpList().get(0).getProdescription());
		    			model.addAttribute("c",cp.getCv_projectexpList().get(0).getPorname());
		    		}		    		    		
		}else{
			model.addAttribute("msg", "您还没有简历，麻溜创建一个吧！");		
		}
		return "CV";
	}
    @RequestMapping(value="updateCvBasic.action")
    public String updateCvBasic(){
	
	return "";
    }
    
    @RequestMapping(value="sendCv.action")
    public String sendCv(String posid,HttpSession session,Model model){
	int pid=Integer.parseInt(posid);
	User u=(User)session.getAttribute("user");	
	Pos_cv pc=new Pos_cv();
	pc.setPosid(pid);
	pc.setStatus(0);
	pc.setUsername(u.getUsername());
	Date date=new Date();
	pc.setTime(date);
	int i=cvService.insertPosCv(pc);
	String msg="miss";
	if(i==1){
	     msg="success";
	}
	return "redirect:searchJobInfo.action?posid="+posid+"&&msg="+msg;
    }
    
    @RequestMapping(value="viewCv.action")
    public String  selectByPosid(String posid,Model model){
	int pid=Integer.parseInt(posid);
	List<Pos_cv> list=cvService.selectByPosid(pid);
	if(list.size()!=0){
	    model.addAttribute("list",list);
	}
	
	return "viewPos_Cv";
    }
    
    @RequestMapping(value="MySendCv.action")
    public String  MySendCv(HttpSession session,Model model){
	User u=(User)session.getAttribute("user");
	List<Pos_cv> list=cvService.MySendselectByUsername(u.getUsername());
	if(list.size()!=0){
	    model.addAttribute("list",list);
	}
	
	return "myCV";
    }
    @RequestMapping(value="CvLook.action")
    public String selectByUserName(Model model,HttpSession session,String username,String poscvid){
	if(username!=null&&username!=""){
	    int id=Integer.parseInt(poscvid);
		Date watchtime=new Date();
		cvService.MySendupdateByPoscvid(id, watchtime);
		cvService.Pos_cvWatched(id);
	    Cv c=cvService.selectByUserName(username);
	    model.addAttribute("msg",2);
	    model.addAttribute("c",c);
	}else{
	    	User u=(User)session.getAttribute("user");
		Cv c=cvService.selectByUserName(u.getUsername());
		model.addAttribute("c",c);
		model.addAttribute("msg",1);
	}
	return "table";
    }
   /* @RequestMapping(value="Pos_cvWatched.action")
    public String Pos_cvWatched(String viewid){
	int poscvid=Integer.parseInt(poscvid);
	Date watchtime=new Date();
	cvService.MySendupdateByPoscvid(poscvid, watchtime);
	int i=cvService.Pos_cvWatched(poscvid);
	System.err.println("已查阅");
	return "";
    }*/
    @RequestMapping(value="Pos_cvPass.action")
    public String Pos_cvPass(String id,Model model){
	int poscvid=Integer.parseInt(id);
	int i=cvService.Pos_cvPass(poscvid);
	
	return "viewPos_Cv";
    }
    
}
