package com.team.app.brag.board.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.team.app.brag.board.vo.Brag_BoardVO;
import com.team.app.brag.board.vo.Brag_ReplyVO;
import com.team.mybatis.config.SqlMapConfig;

public class Brag_BoardDAO {
	SqlSessionFactory sessionf = SqlMapConfig.getSqlMapInterface();
	SqlSession sql_session;

	public Brag_BoardDAO() {
		sql_session = sessionf.openSession(true); // 오토커밋
	}

	// 페이지별 문의글 목록
	public List<Brag_BoardVO> getList(int startRow, int endRow) {
		Map<String, Integer> pageMap = new HashMap<>();
		
		pageMap.put("startRow", startRow);
		pageMap.put("endRow", endRow);

		return sql_session.selectList("Brag_Board.getList", pageMap);
	}

	public int getTotal() {
		return sql_session.selectOne("Brag_Board.getTotal");
	}

	// 게시글 추가
	public void insertBoard(Brag_BoardVO brag_board) {
		sql_session.insert("Brag_Board.insertBoard", brag_board);
	}

	// 게시글 번호 가져오기(SEQ)
	public int getSeq() {
		return sql_session.selectOne("Brag_Board.getSeq");
	}

	// 게시글 상세보기(게시글 한 개 가져오기)
	public Brag_BoardVO getDetail(int brag_board_no) {
		return sql_session.selectOne("Brag_Board.getDetail", brag_board_no);
	}

	// 게시글 수정
	public void update(Brag_BoardVO brag_board) {
		sql_session.update("Brag_Board.update", brag_board);
	}

	// 게시글 삭제
	public void delete(int brag_board_no) {
		sql_session.delete("Brag_Board.delete", brag_board_no);
	}

	
	// 댓글 목록
	public List<Brag_ReplyVO> getReplyList(int brag_board_no) {
		return sql_session.selectList("Brag_Board.getReplyList", brag_board_no);
	}

	
	
	// 댓글 추가
	public void insertReply(Brag_ReplyVO brag_reply) {
		sql_session.insert("Brag_Board.insertReply", brag_reply);
	}

	
	
	// 댓글 수정
	public void updateReply(Brag_ReplyVO brag_reply) {
		sql_session.update("Brag_Board.updateReply", brag_reply);
	}
	
	
	
	// 댓글 번호로 댓글 삭제
	public void deleteReplyByBragReplyNo(int brag_reply_no) {
		sql_session.delete("Brag_Board.deleteReplyByBragReplyNo", brag_reply_no);
	}

	
	
	// 게시글 번호로 댓글 삭제
	public void deleteReplyByBragBoardNo(int brag_board_no) {
		sql_session.delete("Brag_Board.deleteReplyByBragBoardNo", brag_board_no);
	}

	
	public int get_user_no(String parameter) {
		return sql_session.selectOne("Brag_Board.get_user_no", parameter);
	}
	
}
