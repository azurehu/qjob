package qjob.dao;

import qjob.model.Company;

public interface CompanyMapper {
    int deleteByPrimaryKey(Integer comid);

    int insert(Company record);

    int insertSelective(Company record);

    Company selectByPrimaryKey(Integer comid);

    int updateByPrimaryKeySelective(Company record);

    int updateByPrimaryKey(Company record);
    
    Company selectCompany(String username);
}