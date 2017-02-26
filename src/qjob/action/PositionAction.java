package qjob.action;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import qjob.model.Company;
import qjob.model.Position;

import qjob.model.User;
import qjob.service.CompanyService;
import qjob.service.PositionService;
@Controller
public class PositionAction {

	@Autowired
	CompanyService companyService;
	@Autowired
	PositionService positionService;
	
	@RequestMapping(value="viewPosAllPr.action")
	public String viewAll(Model model,HttpSession session){
		User u=(User)session.getAttribute("user");
		List<Position> list=positionService.viewAllPr(u.getUsername());
			if(list.size()!=0){
				model.addAttribute("msg","未发布");
				model.addAttribute("list",list);		
				return "pubPosition";
			}else{
				model.addAttribute("msg","您没有未发布的职位信息");
				return "positionNotFound";
			}
	}
	
	@RequestMapping(value="viewPosAllPub.action")
	public String viewAllPub(Model model,HttpSession session){
		User u=(User)session.getAttribute("user");		
		List<Position> list=positionService.viewAllPub(u.getUsername());
		if(list.size()!=0){
			model.addAttribute("msg","已发布");
			model.addAttribute("list",list);				
		}else{			
		    	model.addAttribute("msg","您还没有发布职位信息");
		}
		return "publishedPosition";
	}
	@RequestMapping(value="positionInfo.action")
	public String positionInfo(Model model,String posid,HttpSession session){
		int id=Integer.valueOf(posid);
		User u=(User)session.getAttribute("user");
	    Company com=companyService.selectCompany(u.getUsername());
		Position pos=positionService.selectByPrimaryKey(id);
		if(pos!=null&&com!=null){
			model.addAttribute("pos",pos);
			model.addAttribute("com",com);
		}
		return "viewPosition";
	}
	@RequestMapping(value="updatePosition.action")
	public String updatePosition(Model model,String posid,String comid){
		int id=Integer.valueOf(posid);
	    	int cid=Integer.valueOf(comid);
	    	Company com=companyService.selectByPrimaryKey(cid) ;
		Position pos=positionService.selectByPrimaryKey(id);
		if(pos!=null&&com!=null){
		    	
			model.addAttribute("pos",pos);
			model.addAttribute("com",com);
		}else{
			model.addAttribute("msg","您还没有创建职位信息");
		}
		return "updatePosition";
	}
	@RequestMapping(value="pubPosition.action")
	public String pubPosition(HttpSession session,Model model,String posid){
	    int id=Integer.valueOf(posid);
	    User u=(User)session.getAttribute("user");
	    positionService.pubPosition(id);
	    List<Position> list=positionService.viewAllPr(u.getUsername());
	    model.addAttribute("list",list);
	    return "pubPosition";
	}
	
	@RequestMapping(value="deletePosition.action")
	public String deletePosition(HttpSession session,Model model,String posid){
	    int id=Integer.valueOf(posid);
	    User u=(User)session.getAttribute("user");
	    positionService.deleteByPrimaryKey(id);
	    List<Position> list=positionService.viewAllPr(u.getUsername());
	    model.addAttribute("list",list);
	    return "pubPosition";
	}
	
	@RequestMapping(value="revokePosition.action")
	public String revokePosition(HttpSession session,Model model,String posid){
	    int id=Integer.valueOf(posid);
	    User u=(User)session.getAttribute("user");
	    positionService.revokePosition(id);
	    List<Position> list=positionService.viewAllPub(u.getUsername());
	    model.addAttribute("list",list);
	    return "publishedPosition";
	}
	@RequestMapping(value="createPosition.action")
	public String createPosition(Position position,Model model,HttpSession session){
	    User u=(User)session.getAttribute("user");
	    position.setUsername(u.getUsername());
	    int i=positionService.insert(position);
	    if(i==1){
		model.addAttribute("msg1","保存成功");
		List<Position> list=positionService.viewAllPr(u.getUsername());
		model.addAttribute("list",list);
	    }else{
		
		model.addAttribute("msg1","保存失败");
	    }
	    return "pubPosition";
	}
}
