package com.helpme.travel.module.host;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class HostServiceImpl implements HostService{
	
	@Autowired
	HostDao dao;

	//coupon
	
	@Override
	public List<Host> selectCoupon() throws Exception {
		// TODO Auto-generated method stub
		return dao.selectCoupon();
	}

	@Override
	public Host selectOneCoupon(HostVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectOneCoupon(vo);
	}
	
	@Override
	public List<Host> selectCouponOption() throws Exception {
		// TODO Auto-generated method stub
		return dao.selectCouponOption();
	}

	@Override
	public int insertCoupon(Host dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.insertCoupon(dto);
	}

	@Override
	public int updateCoupon(Host dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.updateCoupon(dto);
	}

	@Override
	public int deleteCoupon(HostVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.deleteCoupon(vo);
	}

	//lodging
	
	@Override
	public List<Host> selectlodging() throws Exception {
		// TODO Auto-generated method stub
		return dao.selectLodging();
	}

	@Override
	public Host selectOnelodging(HostVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectOneLodging(vo);
	}

	@Override
	public int insertlodging(Host dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.insertLodging(dto);
	}

	@Override
	public int updatelodging(Host dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.updateLodging(dto);
	}

	@Override
	public int deletelodging(HostVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.deleteLodging(vo);
	}

	@Override
	public Host selectOneLogin(Host dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectOneLogin(dto);
	}

	
	
	
	
	


}

