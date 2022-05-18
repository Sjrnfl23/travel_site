package com.helpme.travel.module.admin;

import java.util.List;

public interface AdminService {
	
//  ===========================host=================================
	public List<Admin> selectHost() throws Exception; 
	
//  ===========================member=================================
	public Admin selectOneMember(AdminVo vo) throws Exception; 
	public List<Admin> selectMember() throws Exception; 
	public int updateMember(Admin dto) throws Exception;
	
	
//  ===========================lodging=================================
	public List<Admin> selectLodging(AdminVo vo) throws Exception; 
	public Admin selectOneLodging(AdminVo vo) throws Exception; 
	public int updateLodging(Admin dto) throws Exception;
	
//  ===========================coupon=================================
	public List<Admin> selectCoupon() throws Exception; 	
	public Admin selectOneCoupon(AdminVo vo) throws Exception; 
	public int updateCoupon(Admin dto) throws Exception;
	
//  ===========================payment=================================
	public List<Admin> selectPayment() throws Exception; 	
	public Admin selectOnePayment(AdminVo vo) throws Exception; 
	
//  ===========================페이징=================================	
	public int selectOneCount(AdminVo vo) throws Exception;
	
//  ===========================login==================================
	public Admin selectOneLogin(Admin dto) throws Exception;
}