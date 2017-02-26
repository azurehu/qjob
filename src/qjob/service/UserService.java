package qjob.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import qjob.dao.CompanyMapper;
import qjob.dao.UserMapper;
import qjob.model.Company;
import qjob.model.User;

@Service
@Transactional(readOnly=false)
public class UserService {
    @Autowired
    UserMapper userMapper;
    @Autowired
    CompanyMapper companyMapper;
    
    public User loginUser(String username, String password) {
	    // TODO Auto-generated method stub
	    return userMapper.loginUser(username,password);
	}
    public void   register(User user,Company company){
   	 userMapper.register(user);
   	 if(company.getComname()!=null&&company.getComname()!=""){
   	  companyMapper.insert(company);	
   	 } 	 
   }
    public boolean updateByPrimaryKeySelective(User user){
    	boolean flag = false;
    	int update = userMapper.updateByPrimaryKeySelective(user);
    	if(update!=0){
    		flag = true;
    	}
    	return flag;
    	//userMapper.updateByPrimaryKeySelective(username,password,userphone,useremail,userid);
    }
   public  User selectByUsername(String username){
	   return userMapper.selectByUsername(username);
   }
   
   public User selectPhone(Integer userid){
   	return userMapper.selectPhone(userid);
   }
   public User selectStudy(String username){
   	return userMapper.selectStudy(username);
   }
}
