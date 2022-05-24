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
	public List<Admin> selectHost(AdminVo vo) throws Exception {
		return dao.selectHost(vo); 
	}

//  ===========================member=================================	
	@Override
	public Admin selectOneMember(AdminVo vo) throws Exception {
		return dao.selectOneMember(vo); 
	}
	
	@Override
	public List<Admin> selectMember(AdminVo vo) throws Exception {
		return dao.selectMember(vo); 
	}

	@Override
	public int updateMember(Admin dto) throws Exception {
		return dao.updateMember(dto);
	}
	
	@Override
	public int DeleteMember(AdminVo vo) throws Exception {
		return dao.DeleteMember(vo);
	}
	
//  ===========================admin=================================	
	@Override
	public Admin selectOneAdmin(Admin dto) throws Exception {
		return dao.selectOneAdmin(dto); 
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
	@Override
	public int DeleteLodging(AdminVo vo) throws Exception {
		return dao.DeleteLodging(vo);
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
	
	@Override
	public int DeleteCoupon(AdminVo vo) throws Exception {
		return dao.DeleteCoupon(vo);
	}
//  ===========================payment=================================
	
	@Override
	public List<Admin> selectPayment(AdminVo vo) throws Exception {
		return dao.selectPayment(vo); 
	}	
	
	@Override
	public Admin selectOnePayment(AdminVo vo) throws Exception {
		return dao.selectOnePayment(vo); 
	}	

	@Override
	public int DeletePayment(AdminVo vo) throws Exception {
		return dao.DeletePayment(vo);
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
	public Admin selectOneLogin(Admin dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectOneLogin(dto);

	}	
	
	@Override
	public int selectOneCountCoupon(AdminVo vo) throws Exception {
		return dao.selectOneCountCoupon(vo);
	}	
	
	@Override
	public int selectOneCountPayment(AdminVo vo) throws Exception {
		return dao.selectOneCountPayment(vo);
	}	
	
	@Override
	public int selectOneCountHost(AdminVo vo) throws Exception {
		return dao.selectOneCountHost(vo);
	}		
	
	@Override
	public int selectOneCountMember(AdminVo vo) throws Exception {
		return dao.selectOneCountMember(vo);

	}		
	
//  ===========================mainView=================================	

	@Override
	public Admin selectOneMainView1(Admin dto) throws Exception {
		return dao.selectOneMainView1(dto);
	}	
	@Override
	public Admin selectOneMainView2(Admin dto) throws Exception {
		return dao.selectOneMainView2(dto);
	}	
	@Override
	public Admin selectOneMainView3(Admin dto) throws Exception {
		return dao.selectOneMainView3(dto);
	}	
	@Override
	public Admin selectOneMainView4(Admin dto) throws Exception {
		return dao.selectOneMainView4(dto);
	}	
	@Override
	public Admin selectOneMainView5(Admin dto) throws Exception {
		return dao.selectOneMainView5(dto);
	}	
	@Override
	public Admin selectOneMainView6(Admin dto) throws Exception {
		return dao.selectOneMainView6(dto);
	}	
	@Override
	public Admin selectOneMainView7(Admin dto) throws Exception {
		return dao.selectOneMainView7(dto);
	}	
	@Override
	public Admin selectOneMainView8(Admin dto) throws Exception {
		return dao.selectOneMainView8(dto);
	}	
	@Override
	public Admin selectOneMainView9(Admin dto) throws Exception {
		return dao.selectOneMainView9(dto);
	}	
	@Override
	public Admin selectOneMainView10(Admin dto) throws Exception {
		return dao.selectOneMainView10(dto);
	}	
}

