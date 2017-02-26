package qjob.dao;

import java.util.Date;
import java.util.List;

import qjob.model.Pos_cv;

public interface Pos_cvMapper {
    int deleteByPrimaryKey(Integer poscvid);

    int insertPosCv(Pos_cv record);

    int insertSelective(Pos_cv record);

    List<Pos_cv> selectByPosid(Integer posid);
    
    List<Pos_cv> MySendselectByUsername(String username);
    
    int MySendupdateByPoscvid(Integer poscvid,Date watchtime);

    int updateByPrimaryKeySelective(Pos_cv record);

    int updateByPrimaryKey(Pos_cv record);
    
    int Pos_cvWatched(Integer poscvid);
    
    int Pos_cvPass(Integer poscvid);
}