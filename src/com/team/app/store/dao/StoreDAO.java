package com.team.app.store.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.team.app.store.vo.StoreBestOfVO;
import com.team.app.store.vo.StoreReviewVO;
import com.team.app.store.vo.StoreVO;
import com.team.mybatis.config.SqlMapConfig;

public class StoreDAO {
	SqlSessionFactory sessionf = SqlMapConfig.getSqlMapInterface();
	SqlSession sql_session;
	
	public StoreDAO() {
		sql_session = sessionf.openSession(true); //오토커밋
	}
	
	//헤더 검색 기능
	public List<StoreVO> getStoreSearch(String product_name){
		return sql_session.selectList("Store.getStoreSearch",product_name);
	}

	//카테고리별 가져오기
	public List<StoreVO> getStoreCategory(String product_category, int startRow, int endRow) {
		HashMap<String, Object> map = new HashMap<>();
		
		map.put("product_category", product_category);
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		
		return sql_session.selectList("Store.getStoreCategory",map);
	}
	
	//세부카테고리별 가져오기
	public List<StoreVO> getStoreSubCategory(String product_category, String product_subcategory){
		HashMap<String, String> map = new HashMap<>();
		map.put("product_category", product_category);
		map.put("product_subcategory", product_subcategory);
		return sql_session.selectList("Store.getStoreSubCategory",map);
	}
	
	//상품 가져오기
	public StoreVO getDetail(int product_no) {
		return sql_session.selectOne("Store.getDetail",product_no);
	}
	
	
	//리뷰 등록하기
	public void addProductReply(StoreReviewVO vo) {
		sql_session.insert("Store.addProductReply",vo);
	}
	
	//한 상품에 대한 리뷰 가져오기
	public List<StoreReviewVO> getStoreReply(int product_no) {
		return sql_session.selectList("Store.getStoreReply",product_no);
	}
	
	
	
	//카테고리별 베스트 상품 5
	public List<StoreBestOfVO> getBestOf(String product_category){
		return sql_session.selectList("Store.getBestOf",product_category);
	}
	
	public StoreVO getBestforName(String product_name){
		return sql_session.selectOne("Store.getBestforName",product_name);
	}
	
	
	//총 베스트 상품 16
	public List<StoreBestOfVO> getBest(){
		return sql_session.selectList("Store.getBest");
	}
	
	public List<StoreVO> getListF(int startRow, int endRow) {
		Map<String, Integer> pageMap = new HashMap<>();
		
		pageMap.put("startRow", startRow);
		pageMap.put("endRow", endRow);
		
		return sql_session.selectList("Store.getListF", pageMap);
	}
	
	public int getTotal(String product_category) {
		return sql_session.selectOne("Store.getTotal", product_category);
	}
}
