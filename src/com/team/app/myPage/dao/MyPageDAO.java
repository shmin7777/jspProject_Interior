package com.team.app.myPage.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.team.app.consult.vo.ConsultVO;
import com.team.app.cs.board.vo.CS_BoardVO;
import com.team.app.myPage.vo.MyPageAddressVO;
import com.team.app.myPage.vo.MyPageCartVO;
import com.team.app.payment.vo.PaymentVO;
import com.team.mybatis.config.SqlMapConfig;

public class MyPageDAO{
	SqlSessionFactory sessionf = SqlMapConfig.getSqlMapInterface();
	SqlSession sql_session;
	
	public MyPageDAO() {
		sql_session = sessionf.openSession(true); //오토커밋
	}
	
	//배송지 등록
	public void registerAddress(MyPageAddressVO vo) {
		sql_session.insert("MyPage.registerAddress", vo);
	}
	
	//배송지 목록
	public List<MyPageAddressVO> showAddress(String user_id){
		return sql_session.selectList("MyPage.showAddress", user_id);
	}
	
	//장바구니 목록
	public List<MyPageCartVO> getCart(int startRow, int endRow, String user_id){
		HashMap<String, Object> map = new HashMap<>();
		
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		map.put("user_id", user_id);
		
		return sql_session.selectList("MyPage.getCart", map);
	}
	
	//장바구니 등록
	public void addCart(MyPageCartVO vo) {
		sql_session.insert("MyPage.addCart", vo);
	}
	
	//구매내역
	public List<PaymentVO> showPurchaseList(String user_id, int startRow, int endRow) {
		HashMap<String, Object> map = new HashMap<>();
		
		map.put("user_id", user_id);
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		
		return sql_session.selectList("MyPage.showPurchaseList", map);
	}
	
	//전체 구매내역 수
	public int  purchaseGetTotal(String user_id) {
		return sql_session.selectOne("MyPage.purchaseGetTotal", user_id);
	}
	
	//장바구니 수
	public int  cartGetTotal(String user_id) {
		return sql_session.selectOne("MyPage.cartGetTotal", user_id);
	}
	
	//배송상태
	public String deliveryStat() {
		return sql_session.selectOne("MyPage.deliveryStat");
	}
	
	//문의내역
	public List<CS_BoardVO> showInquireList(int user_no, int startRow, int endRow) {
		HashMap<String, Object> map = new HashMap<>();
		
		map.put("user_no", user_no);
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		
		return sql_session.selectList("MyPage.showInquireList", map);
	}
	
	//문의내역 수
	public int inquireGetTotal(int user_no) {
		return sql_session.selectOne("MyPage.inquireGetTotal", user_no);
	}
	
	//상담내역
	public List<ConsultVO> showConsultList(String user_id, int startRow, int endRow) {
		HashMap<String, Object> map = new HashMap<>();
		
		map.put("user_id", user_id);
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		
		return sql_session.selectList("MyPage.showConsultList", map);
	}
	
	//상담내역 수
	public int consultGetTotal(String user_id) {
		return sql_session.selectOne("MyPage.consultGetTotal", user_id);
	}
	
	//장바구니 삭제
	public void cartDelete(int cart_no) {
		sql_session.delete("MyPage.cartDelete", cart_no);
	}
}
