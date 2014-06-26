package com.naver.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.naver.model.GongjiBean;

public class GongjiDAOImpl implements GongjiDAO{
	private SqlSession sqlSession;
	//mybatis 쿼리문 실행 변수

	/* 최신 공지 목록 5개 보기 */
	public List<GongjiBean> getIndex_gongjiList() {
		return sqlSession.selectList("Gongji.ig_list");
		//Gongji가 namespace명, ig_list가 id명
	}
}
