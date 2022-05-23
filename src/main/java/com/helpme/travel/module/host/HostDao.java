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
   public List<Host> selectCoupon(HostVo vo){ return sqlSession.selectList(namespace + ".selectCoupon", vo); }
   public List<Host> selectCouponOption(HostVo vo){ return sqlSession.selectList(namespace + ".selectCouponOption", vo); }
   public Host selectOneCoupon(HostVo vo){ return sqlSession.selectOne(namespace + ".selectOneCoupon", vo); }
   public int insertCoupon(Host dto){ return sqlSession.insert(namespace + ".insertCoupon", dto); }
   public int updateCoupon(Host dto){ return sqlSession.update(namespace + ".updateCoupon", dto); }
   public int deleteCoupon(HostVo vo) { return sqlSession.delete(namespace+".deleteCoupon",vo); }
   
   //lodging
   public List<Host> selectLodging(HostVo vo){ return sqlSession.selectList(namespace + ".selectLodging",vo); }
   public Host selectOneLodging(HostVo vo){ return sqlSession.selectOne(namespace + ".selectOneLodging", vo); }
   public int insertLodging(Host dto){ return sqlSession.insert(namespace + ".insertLodging",dto); }
   public int updateLodging(Host dto){ return sqlSession.update(namespace + ".updateLodging",dto); }
   public int deleteLodging(HostVo vo) { return sqlSession.delete(namespace+".deleteLodging",vo); }
   
   //login,signUp,hostView
   
   public Host selectOneLogin(Host dto) {return sqlSession.selectOne(namespace + ".selectOneLogin", dto);}
   public Host selectOneHost(HostVo vo) {return sqlSession.selectOne(namespace + ".selectOneHost", vo); }
   public int insertHost(Host dto) {return sqlSession.insert(namespace + ".insertHost",dto); }
   
   //reservation
   public List<Host> selectReservation(Host dto){return sqlSession.selectList(namespace + ".selectReservation",dto); }
   
   //paging
   public int selectOneCountLodging(HostVo vo) {return sqlSession.selectOne(namespace + ".selectOneCountLodging",vo);}
   public int selectOneCountCoupon(HostVo vo) {return sqlSession.selectOne(namespace + ".selectOneCountCoupon",vo);}
   public int selectOneCountReservation(HostVo vo) {return sqlSession.selectOne(namespace + ".selectOneCountReservation",vo);}
   
   
   
}

