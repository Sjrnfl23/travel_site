package com.helpme.travel.module.admin;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;



@Repository
public class AdminDao {
   
   @Inject
//   @Resource(name = "sqlSession")
   private SqlSession sqlSession;
   
   private static String namespace = "com.helpme.travel.module.admin.AdminMpp";
 
   //  ===========================host=================================
   public List<Admin> selectHost(AdminVo vo){return sqlSession.selectList(namespace + ".selectHost", vo);}
   public Admin selectOneHost(AdminVo vo){return sqlSession.selectOne(namespace + ".selectOneHost", vo);}  
   
   //  ===========================member=================================
   

   public Admin selectOneMember(AdminVo vo){return sqlSession.selectOne(namespace + ".selectOneMember", vo);}
   public List<Admin> selectMember(AdminVo vo){return sqlSession.selectList(namespace + ".selectMember", vo);}
   public int updateMember(Admin dto) {return sqlSession.update(namespace + ".updateMember", dto);}
   public int DeleteMember(AdminVo vo) {return sqlSession.update(namespace + ".DeleteMember", vo);}
   
   //  ===========================lodging=================================
   
   public List<Admin> selectLodging(AdminVo vo){return sqlSession.selectList(namespace + ".selectLodging", vo);}
   public Admin selectOneLodging(AdminVo vo){return sqlSession.selectOne(namespace + ".selectOneLodging", vo);}
   public int updateLodging(Admin dto) {return sqlSession.update(namespace + ".updateLodging", dto);}
   
   //  ===========================coupon=================================
   
   public List<Admin> selectCoupon(AdminVo vo){return sqlSession.selectList(namespace + ".selectCoupon", vo);}   
   public Admin selectOneCoupon(AdminVo vo){return sqlSession.selectOne(namespace + ".selectOneCoupon", vo);}
   public int updateCoupon(Admin dto) {return sqlSession.update(namespace + ".updateCoupon", dto);}
   
   //  ===========================payment=================================
   
   public List<Admin> selectPayment(AdminVo vo){return sqlSession.selectList(namespace + ".selectPayment", vo);}  
   public Admin selectOnePayment(AdminVo vo){return sqlSession.selectOne(namespace + ".selectOnePayment", vo);}
   
   //  ===========================공통코드=================================
   
   public List<Admin> selectListForCacheLodging(){return sqlSession.selectList(namespace + ".selectListForCacheLodging", "");}
   
   //  ===========================페이징=================================
   
   public int selectOneCount(AdminVo vo) {return sqlSession.selectOne(namespace + ".selectOneCount", vo);}

   
   // ==========================로그인===================================
   
   public Admin selectOneLogin(Admin dto) {return sqlSession.selectOne(namespace+".selectOneLogin",dto);}

   public int selectOneCountCoupon(AdminVo vo) {return sqlSession.selectOne(namespace + ".selectOneCountCoupon", vo);}
   public int selectOneCountPayment(AdminVo vo) {return sqlSession.selectOne(namespace + ".selectOneCountPayment", vo);}
   public int selectOneCountHost(AdminVo vo) {return sqlSession.selectOne(namespace + ".selectOneCountHost", vo);}
   public int selectOneCountMember(AdminVo vo) {return sqlSession.selectOne(namespace + ".selectOneCountMember", vo);}


}

