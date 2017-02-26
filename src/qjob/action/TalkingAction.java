package qjob.action;

import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import qjob.model.Company;
import qjob.model.Talking;
import qjob.model.User;
import qjob.service.CompanyService;
import qjob.service.TalkingService;
import qjob.service.UserService;

@Controller
public class TalkingAction {
    @Autowired
    UserService userService;
    @Autowired
    TalkingService talkingService;
    @Autowired
    CompanyService companyService;
    @RequestMapping(value="talkToHr.action")
    public String talkToHr(String posuser,Model model){	
	User hr=userService.selectByUsername(posuser);
	Company com =companyService.selectCompany(posuser);
	model.addAttribute("hr",hr);
	model.addAttribute("com",com);
	
	
	return "talkToHr";
    }
    @RequestMapping(value="talking.action")
    public String talking(String posuser,Model model,HttpSession session,String message){
	User user=(User)session.getAttribute("user");
	User hr=userService.selectByUsername(posuser);
	Date d=new Date();
	Talking t=new Talking();
	t.setU1(user.getUsername());
	t.setU2(hr.getUsername());
	t.setTime(d);
	t.setMessage(message);
	int i=talkingService.insert(t);
	model.addAttribute("msg","发送失败");
	if(i==1){
	    model.addAttribute("msg","发送成功");
	}
	
	return "talkToHr";
    }
}
