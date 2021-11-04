package com.team.app.payment.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.team.app.payment.vo.PaymentVO;
import com.team.mybatis.config.SqlMapConfig;

public class PaymentDAO {
	SqlSessionFactory sessionf = SqlMapConfig.getSqlMapInterface();
	SqlSession sql_session;
	
	public PaymentDAO() {
		sql_session = sessionf.openSession(true); //오토커밋
	}
	
	
	//결제 등록
	public void addPay(PaymentVO vo) {
		sql_session.insert("Payment.addPay",vo);
	}
}
