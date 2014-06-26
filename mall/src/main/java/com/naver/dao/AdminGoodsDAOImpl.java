package com.naver.dao;

import org.apache.ibatis.session.SqlSession;

public class AdminGoodsDAOImpl implements AdminGoodsDAO{

	private SqlSession sqlSession;

	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}//setter DI
	
	
}
