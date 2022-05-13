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
   public int insertCoupon(Host host){ return sqlSession.insert(namespace + ".insertCoupon", host); }
   public int updateCoupon(Host dto){ return sqlSession.update(namespace + ".updateCoupon", dto); }
   public int deleteCoupon(HostVo vo) { return sqlSession.delete(namespace+".deleteCoupon",vo); }
   
   //lodging
   public List<Host> selectLodging(){ return sqlSession.selectList(namespace + ".selectLodging", ""); }
   public Host selectOneLodging(HostVo vo){ return sqlSession.selectOne(namespace + ".selectOneLodging", vo); }
   public int insertLodging(){ return sqlSession.insert(namespace + ".insertLodging", ""); }
   public int updateLodging(){ return sqlSession.update(namespace + ".updateLodging", ""); }
   public int deleteLodging() { return sqlSession.delete(namespace+".deleteLodging",""); }
   
}

