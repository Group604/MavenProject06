package com.naver.dao;

import java.util.List;

import com.naver.model.GoodsBean;

public interface GoodsDAO {

	List<GoodsBean> getItemList(GoodsBean gb);

}
