package com.naver.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.naver.model.GoodsBean;

public class GoodsDAOImpl implements GoodsDAO{

	private SqlSession sqlSession;

	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}//setter DI

	public List<GoodsBean> getGoodsList(GoodsBean gb) {
		return sqlSession.selectList("Goods.goods_list", gb);
	}
	

}
