package com.helpme.travel.module.user;

import java.util.List;


public interface UserService {
	
	// 로그인
//	public User selectOneLogin(UserVo vo) throws Exception;
//	
//	//회원가입
	public int insertMember(User dto) throws Exception;
//	
//	// 회원정보
//	public int updateMember(User dto) throws Exception;
	public User selectOneMember(UserVo vo) throws Exception;
//	int deleteMember(UserVo vo) throws Exception;
	
	//지역 검색
	List<User> selectListSearch(UserVo vo) throws Exception;
	
	//유연한 검색
	List<User> selectListSearchFlex(UserVo vo) throws Exception;
	
//	//숙소 상세
	public User selectOneLodgingView(UserVo vo) throws Exception;
	
//	
//	// 결제
//	public int insertPayment(User dto) throws Exception;
//	
//	//예약 내역
	public User selectOneReservation(UserVo vo) throws Exception;
//	public int insertReview(User dto) throws Exception;
//	public int updateReview(User dto) throws Exception;
//	int deleteReview(UserVo vo) throws Exception;
//	
//	//포토맵
	List<User> selectListMap(UserVo vo) throws Exception;
	public User selectOneMap(UserVo vo) throws Exception;
	public int insertMap(User dto) throws Exception;
	public int updateMap(User dto) throws Exception;
	public int deleteMap(UserVo vo) throws Exception;
	public int deleteMapPhoto(UserVo vo) throws Exception;
	public int insertPhotoMapUploaded(User dto) throws Exception;
	public int updatePhotoMapUploaded(User dto) throws Exception;
	
	// count
	int selectPhotomapCount(UserVo vo) throws Exception;
	int selectSearchFlexCount(UserVo vo) throws Exception;
	
	public User selectOneLogin(User dto) throws Exception;
}