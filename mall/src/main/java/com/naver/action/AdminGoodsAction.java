package com.naver.action;

import org.springframework.stereotype.Controller;

import com.naver.dao.AdminGoodsDAO;

@Controller
public class AdminGoodsAction {
	private AdminGoodsDAO admingoodsService;

	public void setAdmingoodsService(AdminGoodsDAO admingoodsService) {
		this.admingoodsService = admingoodsService;
	}
	

}
