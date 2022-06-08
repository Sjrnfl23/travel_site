package com.helpme.travel.module.host;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.helpme.travel.common.util.UtilUpload;
import com.helpme.travel.module.admin.Admin;
import com.helpme.travel.module.admin.AdminVo;


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
		dao.insertLodging(dto);
		
		
		int j = 0;
		for(MultipartFile multipartFile : dto.getFile0() ) {
			String pathModule = this.getClass().getSimpleName().toString().toLowerCase().replace("serviceimpl", "");
			UtilUpload.uploadHost(multipartFile, pathModule, dto);
			dto.setTableName("tvLodgingUploaded");
			dto.setType(0);
			if(j==0) {
				dto.setDefaultNy(1);
			}else {
				dto.setDefaultNy(0);
			}
			dto.setSort(j);
			dto.setTvamSeq(dto.getTvamSeq());
			dao.insertUploadedLodging(dto);
			j++;
		}
		return dao.insertLodging(dto);
	}

	@Override
	public int updatelodging(Host dto) throws Exception {
		dao.updateLodging(dto);
		
		int j = 0;
		for(MultipartFile multipartFile : dto.getFile0() ) {
			
			//String pathModule = this.getClass().getSimpleName().toString().toLowerCase().replace("serviceimpl", "");
			UtilUpload.uploadHost(multipartFile, "admin", dto);
			dto.setTableName("tvLodgingUploaded");
			dto.setType(0);
			if(j==0) {
				dto.setDefaultNy(1);
			}else {
				dto.setDefaultNy(0);
			}
			dto.setSort(j);
			dto.setTvamSeq(dto.getTvamSeq());
			dao.updateUploadedLodging(dto);
			j++;
			
		}
		return dao.updateLodging(dto);
	}

	@Override
	public int deletelodging(HostVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.deleteLodging(vo);
	}

	

	
	
	//Reservation
	@Override
	public List<Host> selectReservation(HostVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectReservation(vo);
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

	@Override
	public int deleteReservation(HostVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.deleteReservation(vo);
	}
	

	 //paging

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
	public int selectOneCountReservation(HostVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectOneCountReservation(vo);
	}
	//login
	@Override
	public Host selectOneLogin(Host dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectOneLogin(dto);
	}
	
	//signUp
	@Override
	public int insertHost(Host dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.insertHost(dto);
	}

	

	//uploaded
	
	@Override
	public Host selectOneUploaded(HostVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectOneUploaded(vo);
	}
	

	
	//hostInfoView
	@Override
	public Host selectOneHost(HostVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectOneHost(vo);
	}

	@Override
	public int updateHost(Host dto) throws Exception {
		 dao.updateHost(dto); 
		
		int j = 0;
		for(MultipartFile multipartFile : dto.getFile0() ) {
			String pathModule = this.getClass().getSimpleName().toString().toLowerCase().replace("serviceimpl", "");
			UtilUpload.uploadHost(multipartFile, pathModule, dto);
			dto.setTableName("tvMemberUploaded");
			dto.setType(0);
			dto.setDefaultNy(0);
			dto.setSort(j);
			dto.setDefaultNy(0);
			dto.setPseq(dto.getTvmmSeq());
			
			dao.updateUploaded(dto);
			j++;
		}
	
	return dao.updateHost(dto);
	
	}


	
	
	


}

