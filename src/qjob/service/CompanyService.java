package qjob.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import qjob.dao.CompanyMapper;
import qjob.model.Company;
@Service
@Transactional(readOnly=true)
public class CompanyService {
    @Autowired
    CompanyMapper companyMapper;
    public Company selectByPrimaryKey(Integer comid){
	return companyMapper.selectByPrimaryKey(comid);
    }
    
    public Company selectCompany(String username){
    	return companyMapper.selectCompany(username);
        }
}
