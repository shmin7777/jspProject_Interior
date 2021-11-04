package com.team.app.manage.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.team.app.manage.vo.ManageEventVO;
import com.team.mybatis.config.SqlMapConfig;

public class ManageEventDAO {
	SqlSessionFactory sessionf = SqlMapConfig.getSqlMapInterface();
	SqlSession sql_session;
	
	public ManageEventDAO() {
		sql_session = sessionf.openSession(true); //오토커밋
	}
	
	//event 등록
	public void insertEvent(ManageEventVO vo) {
		sql_session.insert("Manage.insertEvent", vo);
	}
	
}
