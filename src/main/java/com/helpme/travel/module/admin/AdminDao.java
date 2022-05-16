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
   public List<Admin> selectHost(){return sqlSession.selectList(namespace + ".selectHost", "");}

   public Admin selectOneHost(AdminVo vo){return sqlSession.selectOne(namespace + ".selectOneHost", vo);}  
   
   //  ===========================member=================================
   

   public Admin selectOneMember(AdminVo vo){return sqlSession.selectOne(namespace + ".selectOneMember", vo);}

   public List<Admin> selectMember(){return sqlSession.selectList(namespace + ".selectMember", "");}
   
   public int updateMember(Admin dto) {return sqlSession.update(namespace + ".updateMember", dto);}
   
   
   //  ===========================lodging=================================
   
   public List<Admin> selectLodging(){return sqlSession.selectList(namespace + ".selectLodging", "");}
   
   public Admin selectOneLodging(AdminVo vo){return sqlSession.selectOne(namespace + ".selectOneLodging", vo);}
   
   public int updateLodging(Admin dto) {return sqlSession.update(namespace + ".updateLodging", dto);}
   
   //  ===========================coupon=================================
   
   public List<Admin> selectCoupon(){return sqlSession.selectList(namespace + ".selectCoupon", "");}   
   
   public Admin selectOneCoupon(AdminVo vo){return sqlSession.selectOne(namespace + ".selectOneCoupon", vo);}
   
   public int updateCoupon(Admin dto) {return sqlSession.update(namespace + ".updateCoupon", dto);}
   
   //  ===========================payment=================================
   
   public List<Admin> selectPayment(){return sqlSession.selectList(namespace + ".selectPayment", "");}  
   
   public Admin selectOnePayment(AdminVo vo){return sqlSession.selectOne(namespace + ".selectOnePayment", vo);}
   
   //  ===========================공통코드=================================
   
   public List<Admin> selectListForCacheLodging(){return sqlSession.selectList(namespace + ".selectListForCacheLodging", "");}

}

