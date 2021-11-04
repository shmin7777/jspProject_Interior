package com.team.app.manage.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.team.app.manage.vo.ManageNoticeVO;
import com.team.mybatis.config.SqlMapConfig;

public class ManageNoticeDAO {
	SqlSessionFactory sessionf = SqlMapConfig.getSqlMapInterface();
	SqlSession sql_session;
	
	public ManageNoticeDAO() {
		sql_session = sessionf.openSession(true); //오토커밋
	}
	
	//공지사항 등록
	public void insertNotice(ManageNoticeVO vo) {
		sql_session.insert("Manage.insertNotice", vo);
	}
	
	
}
