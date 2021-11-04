package com.team.app.consult.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.team.app.consult.vo.ConsultVO;
import com.team.mybatis.config.SqlMapConfig;

public class ConsultDAO {

	SqlSessionFactory sessionf = SqlMapConfig.getSqlMapInterface();
	SqlSession sql_session;
	
	public ConsultDAO() {
		//세션 팩토리로 세션을 열어주고 모든 쿼리문은 auto커밋으로 설정
		sql_session = sessionf.openSession(true); //오토커밋
	}
	
	//상담 신청 > 디비에 들어감 (최초상태 0) > 관리자가 1로 바꿔주면 상담승인
	public void insertConsult(ConsultVO vo) {
		sql_session.insert("Consult.insertConsult", vo);
	}
	
	
	
	
}
