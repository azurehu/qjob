package qjob.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import qjob.dao.PositionMapper;
import qjob.model.Position;
@Service
@Transactional(readOnly=false)
public class PositionService {
    @Autowired
    PositionMapper positionMapper;
    
   public int insert(Position position){
	return positionMapper.insert(position);
    }
   
   public List<Position> selectPosition(int startLine,int endLine){
	   
	   return positionMapper.selectPosition(startLine,endLine);
   }
   
   public List<Position> selectPositionAll(){
	   
	   return positionMapper.selectPositionAll();
   }
 
   public List<Position> viewAllPr(String username){
	
	return positionMapper.viewAllPr(username);
   }
   
   public List<Position> viewAllPub(String username){
		
		return positionMapper.viewAllPub(username);
	   }
   public Position selectByPrimaryKey(Integer posid){
       
       return positionMapper.selectByPrimaryKey(posid);
   }

   public int deleteByPrimaryKey(Integer posid){
       
       return positionMapper.deleteByPrimaryKey(posid);
   }
   
   public int updateByPrimaryKeySelective(Position record){
       return positionMapper.updateByPrimaryKeySelective(record);
   }
   
   public int pubPosition(Integer posid){
       return positionMapper.pubPosition(posid);
   }
   
   public int revokePosition(Integer posid){
       return positionMapper.revokePosition(posid);
   }
   
   public Position selectPositionInfo(int posid){
	   return positionMapper.selectPositionInfo(posid);
   }
}
