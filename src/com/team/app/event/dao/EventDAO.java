package com.team.app.event.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.team.app.manage.vo.ManageEventVO;
import com.team.mybatis.config.SqlMapConfig;

public class EventDAO {
	SqlSessionFactory sessionf = SqlMapConfig.getSqlMapInterface();
	SqlSession sql_session;
	
	public EventDAO() {
		sql_session = sessionf.openSession(true); //오토커밋
	}
	
	
	// 페이지별 글 목록
	public List<ManageEventVO> getList(int startRow, int endRow) {
		Map<String, Integer> pageMap = new HashMap<>();
		
		pageMap.put("startRow", startRow);
		pageMap.put("endRow", endRow);
		
		return sql_session.selectList("Event.getList", pageMap);
	}
	
	//전체 게시글수
	public int getTotal() {
		return sql_session.selectOne("Event.getTotal");
	}
	
	//게시글 번호 가져오기(SEQ)
	public int getSeq() {
		return sql_session.selectOne("Event.getSeq");
	}
	
	//이벤트 상세보기
	public ManageEventVO getDetail(int event_no) {
		return sql_session.selectOne("Event.getDetail", event_no);
	}
	
	
	
	
}
