package qjob.dao;

import qjob.model.Cv;

public interface CvMapper {
    int deleteByPrimaryKey(Integer cvid);

    int insertSelective(Cv record);

    Cv selectByUserName(String username);

    int updateByPrimaryKeySelective(Cv record);

    int updateByPrimaryKey(Cv record);
    
    int insertCv(Cv cv);
    
    Cv cvStudy(String username);
    Cv cvWork(String username);
    Cv cvPorject(String username);
}