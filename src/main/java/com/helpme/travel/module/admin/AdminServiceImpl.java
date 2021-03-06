package com.helpme.travel.module.admin;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.helpme.travel.common.util.UtilDateTime;
import com.helpme.travel.common.util.UtilUpload;
import com.helpme.travel.module.host.Host;


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
			
			dao.updateMember(dto);
			
			int j = 0;
			for(MultipartFile multipartFile : dto.getFile0() ) {
//				String pathModule = this.getClass().getSimpleName().toString().toLowerCase().replace("serviceimpl", "");
				UtilUpload.uploadAdminMember(multipartFile, dto);
				dto.setTableName("tvMemberUploaded");
				dto.setType(0);
				dto.setDefaultNy(0);
				dto.setSort(j);
				dto.setDefaultNy(0);
				dto.setPseq(dto.getTvmmSeq());
				
				dao.updateUploaded(dto);
				j++;
			}
		
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
		dao.updateLodging(dto);

		int a = dao.selectCountUploaded(dto);
		
		int j = 0;
		//j<a

			for (MultipartFile multipartFile : dto.getFile0()) { 
				
				//if(dto.getOriginalName().equals("") || dto.getOriginalName().equals(null)) { //?????? ????????? ????????? ????????? ???????????? ?????? 
				//    break;
				// }
				
				UtilUpload.uploadAdminLodging(multipartFile, dto);
				dto.setTableName("tvLodgingUploaded");
				dto.setType(0);
				if (j == 0) {
					dto.setDefaultNy(1);
				} else {
					dto.setDefaultNy(0);
				}
				dto.setSort(j);
				dto.setTvamSeq(dto.getTvamSeq());
				if (j >= a) { //??????????????? ???????????? ?????? ??????????????? insert
					dao.insertUploadedLodging(dto);
				} else {
					dao.updateUploadedLodging(dto);
				}
				 
				j++;
			}
			if(j<a) { // j=a ?????? pass
				for (int i = j; i < a; i++) {
					dto.setTvamSeq(String.valueOf(i));
					dto.setSort(i);
					dao.deleteUploaded(dto);
				}	
			}
			
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
	
//  ===========================????????????=================================
	@PostConstruct
	public void selectListForCacheLodging(){
		
		List<Admin> codeListFromDb = (ArrayList<Admin>) dao.selectListForCacheLodging();
		Admin.cachedCodeArrayList.clear();							//???????????? ?????? ????????? ?????????
		Admin.cachedCodeArrayList.addAll(codeListFromDb);			//???????????? ???????????? ???????????????.
		
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
	
//  ===========================?????????=================================	
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
	public Admin selectOneMainView(Admin dto) throws Exception {
		return dao.selectOneMainView(dto);
	}
	
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

//  ===========================???????????????=================================		
	
	@Override
	public int updateUploaded(Admin dto) throws Exception {
		return dao.updateUploaded(dto);
	}	
	@Override
	public Admin selectOneUploaded(AdminVo vo) throws Exception {
		return dao.selectOneUploaded(vo);
	}	
	
	
}

