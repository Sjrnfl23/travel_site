package com.helpme.travel.module.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.helpme.travel.common.util.UtilDateTime;
import com.helpme.travel.common.util.UtilUpload;
import com.helpme.travel.module.user.UserVo;


@Service
public class UserServiceImpl implements UserService{

	@Autowired
	UserDao dao;
	
		// 로그인
//	@Override
//	public User selectOneLogin(UserVo vo) throws Exception {
//	return dao.selectOneLogin(vo);
//	}
		// 회원가입
	@Override
	public int insertMember(User dto) throws Exception {
		
		return dao.insertMember(dto);
	}
		// 회원정보
//	@Override
//	public int updateMember(User dto) throws Exception {
//		// TODO Auto-generated method stub
//		return dao.updateMember(dto);
//	}

	@Override
		public User selectOneMember(UserVo vo) throws Exception {
		return dao.selectOneMember(vo);
		}
//	@Override
//		public int deleteMember(UserVo vo) throws Exception {
//			// TODO Auto-generated method stub
//			return dao.deleteMember(vo);
//		}
	
	
//		// 검색
//	@Override
//		public List<User> selectListSearch(UserVo vo) throws Exception {
//			// TODO Auto-generated method stub
//			return dao.selectListSearch(vo); 
//		}
	@Override
	public List<User> selectListSearchFlex(UserVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectListSearchFlex(vo); 
		}

	@Override
	public List<User> selectListSearch(UserVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectListSearch(vo); 
	}
	
	
	
		// 숙소상세
	@Override
	public User selectOneLodgingView(UserVo vo) throws Exception {
	return dao.selectOneLodgingView(vo);
		}
	

	
//		// 결제
	@Override
	public int insertReservation(User dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.insertReservation(dto);
	}

//		// 예약내역
	/*
	 * @Override public User selectOneReservation(UserVo vo) throws Exception {
	 * return dao.selectOneReservation(vo); }
	 */
	
	@Override
	public List<User> selectReservation(UserVo vo) throws Exception {
		return dao.selectReservation(vo); 
		}	
	
	@Override
	public int selectOneCountReservation(UserVo vo) throws Exception {
		return dao.selectOneCountReservation(vo);
	}	
	
//		//리뷰
//	@Override
//	public int insertReview(User dto) throws Exception {
//		
//		return dao.insertReview(dto);
//	}
//	@Override
//	public int updateReview(User dto) throws Exception {
//		// TODO Auto-generated method stub
//		return dao.updateReview(dto);
//	}
//	@Override
//	public int deleteReview(UserVo vo) throws Exception {
//		// TODO Auto-generated method stub
//		return dao.deleteReview(vo);
//	}
//	
	// 포토맵

	@Override
	public List<User> selectListMap(UserVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectListMap(vo); 
	}
	@Override
	public int insertMap(User dto) throws Exception {
		
			try {
			
			setRegMod(dto);
			
			dto.setRegDateTime(UtilDateTime.nowDate());
			dto.setModDateTime(UtilDateTime.nowDate());
			dao.insertMap(dto);
			
	
			
			int j = 0;
			for(MultipartFile multipartFile : dto.getFile0() ) {
				String pathModule = this.getClass().getSimpleName().toString().toLowerCase().replace("serviceimpl", "");
				UtilUpload.upload(multipartFile, pathModule, dto);
				dto.setTableName("tvPhotoMapPhoto");
				dto.setType(0);
				dto.setDefaultNy(0);
				dto.setSort(j);
				dto.setDefaultNy(0);
				dto.setPseq(dto.getTvplSeq());
				
				dao.insertPhotoMapUploaded(dto);
				j++;
			}
			
		} finally{
			
		}
		return 0;
		
	}
	
	@Override
	public User selectOneMap(UserVo vo) throws Exception {
	return dao.selectOneMap(vo);
	}
	
	@Override
	public int updateMap(User dto) throws Exception {
		// TODO Auto-generated method stub
		
			dao.updateMap(dto);
		
		int j = 0;
		for(MultipartFile multipartFile : dto.getFile0() ) {
			String pathModule = this.getClass().getSimpleName().toString().toLowerCase().replace("serviceimpl", "");
			UtilUpload.upload(multipartFile, pathModule, dto);
			dto.setTableName("tvPhotoMapPhoto");
			dto.setType(0);
			dto.setDefaultNy(0);
			dto.setSort(j);
			dto.setDefaultNy(0);
			dto.setPseq(dto.getTvplSeq());
			
			dao.updatePhotoMapUploaded(dto);
			j++;
		}
		
		
		return dao.updateMap(dto);
	}
	@Override
	public int deleteMap(UserVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.deleteMap(vo);
	}
	@Override
	public int deleteMapPhoto(UserVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.deleteMapPhoto(vo);
	}

	
	
//	@PostConstruct
//	public void selectListForCache() {
//		
//		List<User> UserListFromDb = (ArrayList<User>) dao.selectListForCache();
//		
//		User.cachedCodeArrayList.clear();
//		User.cachedCodeArrayList.addAll(UserListFromDb);
//		System.out.println("cachedCodeArrayList: " + User.cachedCodeArrayList.size() + " chached ! ");
//		
//	}
//	
//	public static List<User> selectListCachedCode(String Seq) throws Exception {
//		List<User> item = new ArrayList<User>();
//		for(User codeRow : User.cachedCodeArrayList) {
//			if(codeRow.getSeq().equals(Seq)) {
//				item.add(codeRow);
//			} else {
//				// by pass
//			}
//		}
//		return item;
//	}

	// count
	@Override
	public int selectPhotomapCount(UserVo vo) throws Exception {
		return dao.selectPhotomapCount(vo);
	}
	
	@Override
	public int selectSearchFlexCount(UserVo vo) throws Exception {
		return dao.selectSearchFlexCount(vo);
	}
	
	@Override
	public int selectSearchCount(UserVo vo) throws Exception {
		return dao.selectSearchCount(vo);
	}

	// 로그인

	@Override
	public User selectOneLogin(User dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectOneLogin(dto);
	}

	
	// 업로드
//	@Override
//	public int insertPhotoMapUploaded(User dto) throws Exception {
//		// TODO Auto-generated method stub
//		return dao.insertPhotoMapUploaded(dto);
//	}
//	@Override
//	public int updatePhotoMapUploaded(User dto) throws Exception {
//		// TODO Auto-generated method stub
//		return dao.updatePhotoMapUploaded(dto);
//	}
	
	// common
	
	private void setRegMod(User dto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public int selectGoogleNy(User dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectGoogleNy(dto);
	}

	@Override
	public User selectOneGlogin(User dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectOneGlogin(dto);
	}

	@Override
	public int insertReview(User dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.insertReview(dto);
	}

	@Override
	public List<User> selectListReview(UserVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectListReview(vo);
	}

	@Override
	public int selectReviewCount(UserVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectReviewCount(vo);
	}
	
	// Dm
	@Override
	public User selectHostDm(UserVo vo) throws Exception {
		
		return dao.selectHostDm(vo);
	}
	
	
	
	
}