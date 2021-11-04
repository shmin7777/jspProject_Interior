package com.team.app.notice.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.team.app.manage.vo.ManageNoticeVO;
import com.team.mybatis.config.SqlMapConfig;

public class NoticeDAO {
	SqlSessionFactory sessionf = SqlMapConfig.getSqlMapInterface();
	SqlSession sql_session;
	
	public NoticeDAO() {
		//세션 팩토리로 세션을 열어주고 모든 쿼리문은 auto커밋으로 설정
		sql_session = sessionf.openSession(true); //오토커밋
	}
	

	public List<ManageNoticeVO> getList(int startRow, int endRow){
		HashMap<String, Object> map = new HashMap<>();
		
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		
		return sql_session.selectList("Notice.getList", map);
	}
	
	public int getTotal() {
		return sql_session.selectOne("Notice.getTotal");
	}
	
	//이벤트 상세보기
	public ManageNoticeVO getDetail(int notice_no) {
		return sql_session.selectOne("Notice.getDetail", notice_no);
	}
	
}
