package com.helpme.travel.module.admin;

import java.util.List;

public interface AdminService {
	
//  ===========================host=================================
	public List<Admin> selectHost(AdminVo vo) throws Exception; 
	
//  ===========================member=================================
	public Admin selectOneMember(AdminVo vo) throws Exception; 
	public List<Admin> selectMember(AdminVo vo) throws Exception; 
	public int updateMember(Admin dto) throws Exception;
	public int DeleteMember(AdminVo vo) throws Exception;
	
//  ===========================member=================================
	public Admin selectOneAdmin(Admin dto) throws Exception; 
	
//  ===========================lodging=================================
	public List<Admin> selectLodging(AdminVo vo) throws Exception; 
	public Admin selectOneLodging(AdminVo vo) throws Exception; 
	public int updateLodging(Admin dto) throws Exception;
	public int DeleteLodging(AdminVo vo) throws Exception;
	
//  ===========================coupon=================================
	public List<Admin> selectCoupon(AdminVo vo) throws Exception; 	
	public Admin selectOneCoupon(AdminVo vo) throws Exception; 
	public int updateCoupon(Admin dto) throws Exception;
	public int DeleteCoupon(AdminVo vo) throws Exception;
	
//  ===========================payment=================================
	public List<Admin> selectPayment(AdminVo vo) throws Exception; 	
	public Admin selectOnePayment(AdminVo vo) throws Exception; 
	public int DeletePayment(AdminVo vo) throws Exception;
	
//  ===========================페이징=================================	
	public int selectOneCount(AdminVo vo) throws Exception;
	public int selectOneCountCoupon(AdminVo vo) throws Exception;
	public int selectOneCountPayment(AdminVo vo) throws Exception;
	public int selectOneCountHost(AdminVo vo) throws Exception;
	public int selectOneCountMember(AdminVo vo) throws Exception;
	
//  ===========================login==================================
	public Admin selectOneLogin(Admin dto) throws Exception;
	
//  ===========================mainView==================================
	public Admin selectOneMainView1(Admin dto) throws Exception;
	public Admin selectOneMainView2(Admin dto) throws Exception;
	public Admin selectOneMainView3(Admin dto) throws Exception;
	public Admin selectOneMainView4(Admin dto) throws Exception;
	public Admin selectOneMainView5(Admin dto) throws Exception;
	public Admin selectOneMainView6(Admin dto) throws Exception;
	public Admin selectOneMainView7(Admin dto) throws Exception;
	public Admin selectOneMainView8(Admin dto) throws Exception;
	public Admin selectOneMainView9(Admin dto) throws Exception;
	public Admin selectOneMainView10(Admin dto) throws Exception;

//  ===========================파일업로드==================================
	public int updateUploaded(Admin dto) throws Exception;
	public Admin selectOneUploaded(AdminVo vo) throws Exception; 
	
}