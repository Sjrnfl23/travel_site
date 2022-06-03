package com.helpme.travel.module.host;

import java.util.List;

import com.helpme.travel.module.admin.Admin;
import com.helpme.travel.module.admin.AdminVo;

public interface HostService {
	
	//coupon
	public List<Host> selectCoupon(HostVo vo) throws Exception;
	public Host selectOneCoupon(HostVo vo) throws Exception;
	public List<Host> selectCouponOption(HostVo vo) throws Exception;
	public int insertCoupon(Host dto) throws Exception;
	public int updateCoupon(Host dto) throws Exception;
	public int deleteCoupon(HostVo vo) throws Exception;
	
	//lodging
	public List<Host> selectlodging(HostVo vo) throws Exception;
	public Host selectOnelodging(HostVo vo) throws Exception;
	public int insertlodging(Host dto) throws Exception;
	public int updatelodging(Host dto) throws Exception;
	public int deletelodging(HostVo Vo) throws Exception;
	
	 //login,signUp,hostView
	public Host selectOneLogin(Host dto) throws Exception;
	public Host selectOneHost(HostVo vo) throws Exception;
	public int insertHost(Host dto) throws Exception;
	
	//Reservation
	public List<Host> selectReservation(HostVo vo) throws Exception;
	public Host selectOneReservation(Host dto) throws Exception;
	public int updateReservation(Host dto) throws Exception;
	public int deleteReservation(HostVo vo) throws Exception;
	//Paging
	public int selectOneCountLodging(HostVo vo) throws Exception;
	public int selectOneCountReservation(HostVo vo) throws Exception;
	public int selectOneCountCoupon(HostVo vo) throws Exception;
	
	//mainView
	public Host selectOneSales(Host dto) throws Exception;
	public int updateHost(Host dto) throws Exception;
	
	//upload
	
	public Host selectOneUploaded(HostVo vo) throws Exception;
}
