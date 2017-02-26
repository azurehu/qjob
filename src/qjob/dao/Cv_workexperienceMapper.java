package qjob.dao;

import qjob.model.Cv_workexperience;

public interface Cv_workexperienceMapper {
    int deleteByPrimaryKey(Integer expid);

    int insert(Cv_workexperience record);

    int insertSelective(Cv_workexperience record);

    Cv_workexperience selectByPrimaryKey(Integer expid);

    int updateByPrimaryKeySelective(Cv_workexperience record);

    int updateByPrimaryKey(Cv_workexperience record);
}