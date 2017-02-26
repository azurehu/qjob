package qjob.dao;

import java.util.List;

import qjob.model.Position;

public interface PositionMapper {
    int deleteByPrimaryKey(Integer posid);

    int insert(Position position);
     
    int insertSelective(Position record);

    Position selectByPrimaryKey(Integer posid);

    int updateByPrimaryKeySelective(Position record);

    int updateByPrimaryKey(Position record);
    
    List<Position> selectPosition( int startLine,int endLine);
    
    List<Position> selectPositionAll();
   
    List<Position> viewAllPr (String username);
    
    List<Position> viewAllPub (String username);
    
    int pubPosition(Integer posid);
    int revokePosition(Integer posid);
    
    Position selectPositionInfo(int posid);
    
    List<Position>  selectPositionLike(String comname,String comtype,String posname,String comlocation,String postype);
}