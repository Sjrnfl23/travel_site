package com.helpme.travel.module.host;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;




@Repository
public class HostDao {
   
   @Inject
//   @Resource(name = "sqlSession")
   private SqlSession sqlSession;
   
   private static String namespace = "com.helpme.travel.module.host.HostMpp";
   
   //coupon
   public List<Host> selectCoupon(){ return sqlSession.selectList(namespace + ".selectCoupon", ""); }
   public List<Host> selectCouponOption(){ return sqlSession.selectList(namespace + ".selectCouponOption", ""); }
   public Host selectOneCoupon(HostVo vo){ return sqlSession.selectOne(namespace + ".selectOneCoupon", vo); }
   public int insertCoupon(Host dto){ return sqlSession.insert(namespace + ".insertCoupon", dto); }
   public int updateCoupon(Host dto){ return sqlSession.update(namespace + ".updateCoupon", dto); }
   public int deleteCoupon(HostVo vo) { return sqlSession.delete(namespace+".deleteCoupon",vo); }
   
   //lodging
   public List<Host> selectLodging(){ return sqlSession.selectList(namespace + ".selectLodging", ""); }
   public Host selectOneLodging(HostVo vo){ return sqlSession.selectOne(namespace + ".selectOneLodging", vo); }
   public int insertLodging(Host dto){ return sqlSession.insert(namespace + ".insertLodging",dto); }
   public int updateLodging(Host dto){ return sqlSession.update(namespace + ".updateLodging",dto); }
   public int deleteLodging(HostVo vo) { return sqlSession.delete(namespace+".deleteLodging",vo); }
   
   //main
   public Host selectOneMember(HostVo vo){ return sqlSession.selectOne(namespace + ".selectOneMember", vo); }
   public Host selectOneLogin(Host dto) {return sqlSession.selectOne(namespace + ".selectOneLogin", dto);}
  
}

