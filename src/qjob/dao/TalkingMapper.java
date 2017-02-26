package qjob.dao;

import qjob.model.Talking;

public interface TalkingMapper {
    int deleteByPrimaryKey(Integer talkid);

    int insert(Talking record);

    int insertSelective(Talking record);

    Talking selectByPrimaryKey(Integer talkid);

    int updateByPrimaryKeySelective(Talking record);

    int updateByPrimaryKey(Talking record);
}