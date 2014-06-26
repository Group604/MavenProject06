package com.naver.action;

import org.springframework.stereotype.Controller;

import com.naver.dao.GoodsDAO;

@Controller
public class GoodsAction {
	private GoodsDAO goodsService;

	public void setGoodsService(GoodsDAO goodsService) {
		this.goodsService = goodsService;
	}
	
	
}
