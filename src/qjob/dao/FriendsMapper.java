package qjob.dao;

import qjob.model.Friends;

public interface FriendsMapper {
    int deleteByPrimaryKey(Integer friendsid);

    int insert(Friends record);

    int insertSelective(Friends record);

    Friends selectByPrimaryKey(Integer friendsid);

    int updateByPrimaryKeySelective(Friends record);

    int updateByPrimaryKey(Friends record);
}