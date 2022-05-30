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
	public List<Host> selectCoupon(HostVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectCoupon(vo);
	}

	@Override
	public Host selectOneCoupon(HostVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectOneCoupon(vo);
	}
	
	@Override
	public List<Host> selectCouponOption(HostVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectCouponOption(vo);
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
	public List<Host> selectlodging(HostVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectLodging(vo);
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

	@Override
	public Host selectOneHost(HostVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectOneHost(vo);
	}
	
	
	//Reservation
	@Override
	public List<Host> selectReservation(Host dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectReservation(dto);
	}
	@Override
	public int selectOneCountReservation(HostVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectOneCountReservation(vo);
	}

	 //login,signUp,hostView

	@Override
	public int selectOneCountLodging(HostVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectOneCountLodging(vo);
	}


	@Override
	public int selectOneCountCoupon(HostVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectOneCountCoupon(vo);
	}

	@Override
	public int insertHost(Host dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.insertHost(dto);
	}

	@Override
	public Host selectOneReservation(Host dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectOneReservation(dto);
	}

	@Override
	public int updateReservation(Host dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.updateReservation(dto);
	}

	@Override
	public Host selectOneSales(Host dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectOneSales(dto);
	}

	
	
	
	
	


}

