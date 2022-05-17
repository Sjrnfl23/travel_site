package com.helpme.travel.module.user;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class UserDao {
	
	@Inject
//	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.helpme.travel.module.user.UserMpp";

//	public User selectOneLogin(User dto) { return sqlSession.selectOne(namespace + ".selectOneLogin", dto);}
	
	// 회원정보
	public int insertMember(User dto) {return sqlSession.insert( namespace + ".insertMember", dto);}
//	public int updateMember(User dto) {return sqlSession.update( namespace + ".updateMember", dto);}
	public User selectOneMember(UserVo vo) { return sqlSession.selectOne(namespace + ".selectOneMember", vo);}
//	public int deleteMember(UserVo vo) {return sqlSession.delete( namespace + ".delete", vo);}
//	
//	// 숙소 검색
//	public List<User> selectListSearch(UserVo vo) {List<User> list = sqlSession.selectList(namespace + ".selectListSearch", vo); return list; } 
	public List<User> selectListSearchFlex(UserVo vo) {List<User> list = sqlSession.selectList(namespace + ".selectListSearchFlex", vo); return list; } 
//	
//	// 숙소 상세
//	public User selectOneLodging(UserVo vo) { return sqlSession.selectOne(namespace + ".selectOneLodging", vo);}
//	// 숙소 결제
//	public int insertPayment(User dto) {return sqlSession.insert( namespace + ".insertPayment", dto);}
//	
//	// 예약 내역
//	public  insertReservation(User dto) {return sqlSession.insert( namespace + ".insertReservation", dto);}
//	public int insertReview(User dto) {return sqlSession.insert( namespace + ".insertReview", dto);}
//	public int updateReview(User dto) {return sqlSession.update( namespace + ".updateReview", dto);}
//	public int deleteReview(UserVo vo) {return sqlSession.delete( namespace + ".deleteReview", vo);}
//	
//	// 포토맵
//	public List<User> selectMap(UserVo vo) {List<User> list = sqlSession.selectList(namespace + ".selectMap", vo); return list; }
//	public int insertMap(User dto) {return sqlSession.insert( namespace + ".insertMap", dto);}
//	public int updateMap(User dto) {return sqlSession.update( namespace + ".updateMap", dto);}
//	public int deleteMap(UserVo vo) {return sqlSession.delete( namespace + ".deleteMap", vo);}
	
	
}