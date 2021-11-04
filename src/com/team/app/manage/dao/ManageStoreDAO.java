package com.team.app.manage.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.team.app.manage.vo.ManageStoreVO;
import com.team.mybatis.config.SqlMapConfig;

public class ManageStoreDAO {
	SqlSessionFactory sessionf = SqlMapConfig.getSqlMapInterface();
	SqlSession sql_session;
	
	public ManageStoreDAO() {
		sql_session = sessionf.openSession(true); //오토커밋
	}
	
	//store등록
	public void insertStore(ManageStoreVO vo) {
		sql_session.insert("Manage.insertStore",vo);
	}
}
