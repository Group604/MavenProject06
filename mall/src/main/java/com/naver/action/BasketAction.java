package com.naver.action;

import org.springframework.stereotype.Controller;

import com.naver.dao.BasketDAO;

@Controller
public class BasketAction {

	private BasketDAO basketService;

	public void setBasketService(BasketDAO basketService) {
		this.basketService = basketService;
	}
	
	
}
