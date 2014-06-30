package com.naver.dao;

import java.util.List;

import com.naver.model.GoodsBean;

public interface AdminGoodsDAO {

	List<GoodsBean> getGoodsList();//상품리스트 조회

}
