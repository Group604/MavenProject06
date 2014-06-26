package com.naver.dao;

import java.util.List;

import com.naver.model.GongjiBean;

public interface GongjiDAO {

	List<GongjiBean> getIndex_gongjiList();//최신 공지 목록 5개 가져오기

}
