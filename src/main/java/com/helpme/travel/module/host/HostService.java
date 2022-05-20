package com.helpme.travel.module.host;

import java.util.List;

public interface HostService {
	
	//coupon
	public List<Host> selectCoupon() throws Exception;
	public Host selectOneCoupon(HostVo vo) throws Exception;
	public List<Host> selectCouponOption() throws Exception;
	public int insertCoupon(Host dto) throws Exception;
	public int updateCoupon(Host dto) throws Exception;
	public int deleteCoupon(HostVo vo) throws Exception;
	
	//lodging
	public List<Host> selectlodging() throws Exception;
	public Host selectOnelodging(HostVo vo) throws Exception;
	public int insertlodging(Host dto) throws Exception;
	public int updatelodging(Host dto) throws Exception;
	public int deletelodging(HostVo Vo) throws Exception;
	
	//main
	public Host selectOneLogin(Host dto) throws Exception;
}
