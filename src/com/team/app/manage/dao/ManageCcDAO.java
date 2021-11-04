package com.team.app.manage.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.team.app.cc.vo.CcVO;
import com.team.mybatis.config.SqlMapConfig;

public class ManageCcDAO {
	
		SqlSessionFactory sessionf = SqlMapConfig.getSqlMapInterface();
		SqlSession sql_session;
		
		public ManageCcDAO() {
			sql_session = sessionf.openSession(true); //오토커밋
		}
		
		//시공사례 등록
		public void insertCc(CcVO vo) {
			sql_session.insert("Cc.insertCc", vo);
		}
		
}
