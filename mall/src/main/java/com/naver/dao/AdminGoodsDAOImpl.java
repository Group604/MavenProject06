package com.naver.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.naver.model.GoodsBean;

public class AdminGoodsDAOImpl implements AdminGoodsDAO{

	private SqlSession sqlSession;

	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}//setter DI

	public List<GoodsBean> getGoodsList() {
	 return this.sqlSession.selectList("Admingoods.goods_list");
	}
	
	
}
