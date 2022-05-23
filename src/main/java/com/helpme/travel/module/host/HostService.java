package com.helpme.travel.module.host;

import java.util.List;

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
	public List<Host> selectReservation(Host dto) throws Exception;
	
	//Paging
	public int selectOneCountLodging(HostVo vo) throws Exception;
	public int selectOneCountReservation(HostVo vo) throws Exception;
	public int selectOneCountCoupon(HostVo vo) throws Exception;
}
