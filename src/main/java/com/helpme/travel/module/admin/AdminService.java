package com.helpme.travel.module.admin;

import java.util.List;

public interface AdminService {
	
	public List<Admin> selectHost() throws Exception; 
	public Admin selectOneHost(AdminVo vo) throws Exception; 
	
	public List<Admin> selectMember() throws Exception; 
	
}
