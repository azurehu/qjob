package qjob.dao;

import qjob.model.Cv_studyexperience;

public interface Cv_studyexperienceMapper {
    int deleteByPrimaryKey(Integer edexpid);

    int insert(Cv_studyexperience record);

    int insertSelective(Cv_studyexperience record);

    Cv_studyexperience selectByPrimaryKey(Integer edexpid);

    int updateByPrimaryKeySelective(Cv_studyexperience record);

    int updateByPrimaryKey(Cv_studyexperience record);
}