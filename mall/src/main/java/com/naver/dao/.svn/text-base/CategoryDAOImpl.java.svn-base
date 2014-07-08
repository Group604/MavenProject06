package com.naver.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.naver.model.CategoryBean;

public class CategoryDAOImpl implements CategoryDAO{
   private SqlSession sqlSession;

	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}//DI

	/*카테고리 리스트 */
	public List<CategoryBean> getCategoryList() {
	return this.sqlSession.selectList("Category.category_list");
	}
   
	
   
}
