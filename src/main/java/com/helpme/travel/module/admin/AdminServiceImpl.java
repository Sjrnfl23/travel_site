package com.helpme.travel.module.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class AdminServiceImpl implements AdminService{
	
	@Autowired
	AdminDao dao;
	
//  ===========================host=================================	
	@Override
	public List<Admin> selectHost() throws Exception {
		return dao.selectHost(); 
	}

//  ===========================member=================================	
	@Override
	public Admin selectOneMember(AdminVo vo) throws Exception {
		return dao.selectOneMember(vo); 
	}
	
	
	@Override
	public List<Admin> selectMember() throws Exception {
		return dao.selectMember(); 
	}

	@Override
	public int updateMember(Admin dto) throws Exception {
		return dao.updateMember(dto);
	}
//  ===========================lodging=================================
	
	@Override
	public List<Admin> selectLodging() throws Exception {
		return dao.selectLodging(); 
	}	

	@Override
	public Admin selectOneLodging(AdminVo vo) throws Exception {
		return dao.selectOneLodging(vo); 
	}
	
	
//  ===========================coupon=================================
	
	@Override
	public List<Admin> selectCoupon() throws Exception {
		return dao.selectCoupon(); 
	}	
	
	@Override
	public Admin selectOneCoupon(AdminVo vo) throws Exception {
		return dao.selectOneCoupon(vo); 
	}

	@Override
	public int updateCoupon(Admin dto) throws Exception {
		return dao.updateCoupon(dto);
	}
	
//  ===========================payment=================================
	
	@Override
	public List<Admin> selectPayment() throws Exception {
		return dao.selectPayment(); 
	}	
	
	@Override
	public Admin selectOnePayment(AdminVo vo) throws Exception {
		return dao.selectOnePayment(vo); 
	}	
	
}

