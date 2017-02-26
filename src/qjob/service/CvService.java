package qjob.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import qjob.dao.CvMapper;
import qjob.dao.Pos_cvMapper;
import qjob.model.Cv;
import qjob.model.Pos_cv;

@Service
public class CvService {
    @Autowired
    CvMapper cvMapper;
    @Autowired
    Pos_cvMapper pos_cvMapper;
    public int insertCv(Cv cv){
	return cvMapper.insertCv(cv);
    }
   
    public int insertPosCv(Pos_cv record){
	return pos_cvMapper.insertPosCv(record);
    }
    
    public Cv selectByUserName(String username){
	return cvMapper.selectByUserName(username);
    }
    
    public List<Pos_cv> selectByPosid(Integer posid){
	return pos_cvMapper.selectByPosid(posid);
    }
    
    public int Pos_cvWatched(Integer poscvid){
	return pos_cvMapper.Pos_cvWatched(poscvid);
    }
    public int Pos_cvPass(Integer poscvid){
	return pos_cvMapper.Pos_cvPass(poscvid);
    }
    
    public List<Pos_cv> MySendselectByUsername(String username){
	return pos_cvMapper.MySendselectByUsername(username);
    }
    
    public int MySendupdateByPoscvid(Integer poscvid,Date watchtime){
	return pos_cvMapper.MySendupdateByPoscvid(poscvid, watchtime);
    }
    
    public Cv cvStudy(String username){
    	return cvMapper.cvStudy(username);
    }
    public Cv cvWork(String username){
    	return cvMapper.cvWork(username);
    }
    public Cv cvPorject(String username){
    	return cvMapper.cvPorject(username);
    }
}
