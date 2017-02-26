package qjob.dao;

import qjob.model.Cv_projectexperience;

public interface Cv_projectexperienceMapper {
    int deleteByPrimaryKey(Integer projectid);

    int insert(Cv_projectexperience record);

    int insertSelective(Cv_projectexperience record);

    Cv_projectexperience selectByPrimaryKey(Integer projectid);

    int updateByPrimaryKeySelective(Cv_projectexperience record);

    int updateByPrimaryKey(Cv_projectexperience record);
}