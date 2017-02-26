package qjob.action;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import qjob.model.Company;
import qjob.model.Cv;
import qjob.model.User;
import qjob.service.CvService;
import qjob.service.UserService;

@Controller
public class UserAction {
    @Autowired	
    UserService userService;
    @Autowired 
    CvService cvService;
	@RequestMapping(value="login.action")
	public String login(@RequestParam(value="username1") String username,User user,Model model,HttpSession session){
//		UserMapperImp u=new UserMapperImp();
//		User r=u.loginUser(user.getUsername(),user.getPassword());
	    User r=userService.loginUser(username,user.getPassword());
		if(r!=null){
		    session.setAttribute("user",r);
		    
		    if(r.getRole()==1){
		    	return "index";
		    }else{
		    	return "index_hr";
		    }
		}else{
		    model.addAttribute("msg","登录失败");
		    return "login";
		}	
	}
	@RequestMapping(value="register.action")
	public String register(User user,Company company,Model model){
		userService.register(user,company);
		
		model.addAttribute("msg","恭喜你，注册成功，请登录");
		return "login";
		
	}
	@RequestMapping(value="updateUser.action")
	public String updateUser(HttpSession session,Model model,User record){
		
		User u = (User)session.getAttribute("user");
		record.setUserid(u.getUserid());
		record.setUsername(u.getUsername());
		boolean updateU = userService.updateByPrimaryKeySelective(record);
		if(updateU){
			model.addAttribute("msg", "修改信息成功！");
			return "personInfoChange";
		}else{
			model.addAttribute("msg", "修改信息失败！");
			return "personInfoChange";
		}
	}
	@RequestMapping(value="personInfoChange.action")
	public String myUserInfo(Model model,HttpSession session){
		User u=(User)session.getAttribute("user");
		model.addAttribute("u",u);
		return "personInfoChange";
	}
	
			
}
