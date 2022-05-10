package com.helpme.travel.module.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class AdminServiceImpl implements AdminService{
	
	@Autowired
	AdminDao dao;
	
	
	@Override
	public List<Admin> selectHost() throws Exception {
		return dao.selectHost(); 
	}
	@Override
	public Admin selectOneHost(AdminVo vo) throws Exception {
		return dao.selectOneHost(vo); 
	}
	
	
	@Override
	public List<Admin> selectMember() throws Exception {
		return dao.selectMember(); 
	}


}

