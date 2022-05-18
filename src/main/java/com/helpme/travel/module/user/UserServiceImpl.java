package com.helpme.travel.module.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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

	
	
	
		// 숙소상세
	@Override
	public User selectOneLodgingView(UserVo vo) throws Exception {
	return dao.selectOneLodgingView(vo);
		}
	

	
//		// 결제
//	@Override
//		public int insertPayment(User dto) throws Exception {
//			
//			return dao.insertPayment(dto);
//		}
//		// 예약내역
//	@Override
//	public int insertReservation(User dto) throws Exception {
//		
//		return dao.insertReservation(dto);
//	}
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
//	// 포토맵
//	@Override
//	public List<User> selectMap(UserVo vo) throws Exception {
//		// TODO Auto-generated method stub
//		return dao.selectMap(vo); 
//	}
//	@Override
//	public int insertMap(User dto) throws Exception {
//		
//		return dao.insertMap(dto);
//	}
//	@Override
//	public int updateMap(User dto) throws Exception {
//		// TODO Auto-generated method stub
//		return dao.updateMap(dto);
//	}
//	@Override
//	public int deleteMap(UserVo vo) throws Exception {
//		// TODO Auto-generated method stub
//		return dao.deleteMap(vo);
//	}
//
//	
//	
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
	
	
}