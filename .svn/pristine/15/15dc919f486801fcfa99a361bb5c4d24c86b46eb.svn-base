package com.team.app.cs.board.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.team.app.cs.board.vo.CS_BoardVO;
import com.team.app.cs.board.vo.CS_ReplyVO;
import com.team.mybatis.config.SqlMapConfig;

public class CS_BoardDAO {
	SqlSessionFactory sessionf = SqlMapConfig.getSqlMapInterface();
	SqlSession sql_session;

	public CS_BoardDAO() {
		sql_session = sessionf.openSession(true); // 오토커밋
	}
	
	//문의글별로 가져오기
	public List<CS_BoardVO> getCategory(String cs_board_select){
		HashMap<String, String> map = new HashMap<>();
		map.put("cs_board_select", cs_board_select);
		
		return sql_session.selectList("CS_Board.getCategory", map);
	}
	
	// 페이지별 문의글 목록
	public List<CS_BoardVO> getList(int startRow, int endRow) {
		Map<String, Integer> pageMap = new HashMap<>();

		pageMap.put("startRow", startRow);
		pageMap.put("endRow", endRow);

		return sql_session.selectList("CS_Board.getList", pageMap);
	}

	// 페이지별 검색글 목록
		public List<CS_BoardVO> get_S_List(int startRow, int endRow,String keyword) {
			Map<String, String> pageMap = new HashMap<>();
			
			pageMap.put("startRow", startRow+"");
			pageMap.put("endRow", endRow+"");
			pageMap.put("keyword",keyword);
			return sql_session.selectList("CS_Board.get_S_List", pageMap);
		}
	
	public int getTot(String cs_board_select) {
		return sql_session.selectOne("CS_Board.getTotal");
	}
	
	public int getTotal() {
		return sql_session.selectOne("CS_Board.getTotal");
	}

	// 게시글 추가
	public void insertBoard(CS_BoardVO cs_board) {
		sql_session.insert("CS_Board.insertBoard", cs_board);
	}

	// 게시글 번호 가져오기(SEQ)
	public int getSeq() {
		return sql_session.selectOne("CS_Board.getSeq");
	}

	// 게시글 상세보기(게시글 한 개 가져오기)
	public CS_BoardVO getDetail(int cs_board_no) {
		return sql_session.selectOne("CS_Board.getDetail", cs_board_no);
	}

	// 게시글 수정
	public void update(CS_BoardVO cs_board) {
		sql_session.update("CS_Board.update", cs_board);
	}

	// 게시글 삭제
	public void delete(int cs_board_no) {
		sql_session.delete("CS_Board.delete", cs_board_no);
	}

	// 댓글 목록
	public List<CS_ReplyVO> getReplyList(int cs_board_no) {
		return sql_session.selectList("CS_Board.getReplyList", cs_board_no);
	}

	// 댓글 추가
	public void insertReply(CS_ReplyVO cs_reply) {
		sql_session.insert("CS_Board.insertReply", cs_reply);
	}

	// 댓글 수정
	public void updateReply(CS_ReplyVO cs_reply) {
		sql_session.update("CS_Board.updateReply", cs_reply);
	}

	// 댓글 번호로 댓글 삭제
	public void deleteReplyByCSReplyNo(int cs_reply_no) {
		sql_session.delete("CS_Board.deleteReplyByCSReplyNo", cs_reply_no);
	}

	// 게시글 번호로 댓글 삭제
	public void deleteReplyByCSBoardNo(int cs_board_no) {
		sql_session.delete("CS_Board.deleteReplyByCSBoardNo", cs_board_no);
	}

	public int get_user_no(String parameter) {
		return sql_session.selectOne("CS_Board.get_user_no", parameter);
	}
	
}
