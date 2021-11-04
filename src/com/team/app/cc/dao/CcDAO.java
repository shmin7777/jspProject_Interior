package com.team.app.cc.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.team.app.cc.vo.CcVO;
import com.team.mybatis.config.SqlMapConfig;

public class CcDAO {
	
	SqlSessionFactory sessionf = SqlMapConfig.getSqlMapInterface();
	SqlSession sql_session;

	public CcDAO() {
		sql_session = sessionf.openSession(true); // 오토커밋
	}
	
	public List<CcVO> getList(int startRow, int endRow){
		HashMap<String, Object> map = new HashMap<>();
		
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		
		return sql_session.selectList("Cc.getList", map);
	}
	
	public int getTotal() {
		return sql_session.selectOne("Cc.getTotal");
	}
	
	//이벤트 상세보기
	public CcVO getDetail(int cc_no) {
		return sql_session.selectOne("Cc.getDetail", cc_no);
	}
	
	
	
}
