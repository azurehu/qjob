package qjob.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import qjob.model.User;

public interface UserMapper {
    int deleteByPrimaryKey(Integer userid);

    int insert(User record);

    int insertSelective(User record);

    User selectByUsername(String username);
//更新变化字段
    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
    
    User loginUser(String username,String password);
    
    void  register(User user);
    
    User selectPhone(@Param("userid")Integer userid);
    User selectStudy(@Param("username")String username);
    
}