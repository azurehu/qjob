package qjob.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import qjob.model.User;
import qjob.service.UserService;

@Controller
public class ValidateAction {
	@Autowired	
    UserService userService;
	@ResponseBody
    @RequestMapping(value="queryByUser.action", 
    method=RequestMethod.POST,produces="application/json;charset=UTF-8")  
   public int queryByName(User user,HttpServletRequest request){		
       User u = null;
       int i=0;
   	   u = userService.selectByUsername(user.getUsername());  
   	   if(u==null){
   		   i=1;
   	   }
       return i;
   }
}
