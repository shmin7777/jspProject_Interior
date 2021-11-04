package com.team.mybatis.config;

import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class SqlMapConfig {
	private static SqlSessionFactory sqlsession_f;
	
	static {
		try {
			String resource = "./com/team/mybatis/config/config.xml";
			Reader reader = Resources.getResourceAsReader(resource);
			sqlsession_f = new SqlSessionFactoryBuilder().build(reader);
			reader.close();
		} catch (IOException e) {
			e.printStackTrace();
			throw new RuntimeException("초기화 문제 발생, SqlMapConfig.java");
		}
	}
	
	public static SqlSessionFactory getSqlMapInterface() {
		return sqlsession_f;
	}
}
