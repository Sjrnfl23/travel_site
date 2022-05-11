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
   
   public List<Admin> selectHost(){return sqlSession.selectList(namespace + ".selectHost", "");}
<<<<<<< HEAD
   public Admin selectOneHost(AdminVo vo){return sqlSession.selectOne(namespace + ".selectOneHost", vo);}
=======
   public Admin selectOneMember(AdminVo vo){return sqlSession.selectOne(namespace + ".selectOneMember", vo);}
>>>>>>> branch 'main' of https://github.com/Sjrnfl23/travel_site.git
   
   public List<Admin> selectMember(){return sqlSession.selectList(namespace + ".selectMember", "");}
   
}

