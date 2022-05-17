package com.helpme.travel.module.admin;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;

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
	public List<Admin> selectLodging(AdminVo vo) throws Exception {
		return dao.selectLodging(vo); 
	}	

	@Override
	public Admin selectOneLodging(AdminVo vo) throws Exception {
		return dao.selectOneLodging(vo); 
	}
	
	@Override
	public int updateLodging(Admin dto) throws Exception {
		return dao.updateLodging(dto);
	}	
//  ===========================coupon=================================
	
	@Override
	public List<Admin> selectCoupon(AdminVo vo) throws Exception {
		return dao.selectCoupon(vo); 
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

	
//  ===========================공통코드=================================
	@PostConstruct
	public void selectListForCacheLodging(){
		
		List<Admin> codeListFromDb = (ArrayList<Admin>) dao.selectListForCacheLodging();
		Admin.cachedCodeArrayList.clear();							//메모리에 있는 리스트 클리어
		Admin.cachedCodeArrayList.addAll(codeListFromDb);			//메모리에 리스트를 만들어준다.
		
		System.out.println("cachedCodeArrayList: " + Admin.cachedCodeArrayList.size() + " chached !");
	}
	
	public static List<Admin> selectListForCacheLodging(String tvcgSeq) throws Exception {
		List<Admin> rt = new ArrayList<Admin>();
		for(Admin codeRow : Admin.cachedCodeArrayList) {
			if(codeRow.getTvcgSeq().equals(tvcgSeq)) {
				rt.add(codeRow);
			} else {
				// by pass
			}
		}
		return rt;
	}	
	
//  ===========================페이징=================================	
	@Override
	public int selectOneCount(AdminVo vo) throws Exception {
		return dao.selectOneCount(vo);
	}	
	
	@Override
	public int selectOneCountCoupon(AdminVo vo) throws Exception {
		return dao.selectOneCountCoupon(vo);
	}		
	
}

