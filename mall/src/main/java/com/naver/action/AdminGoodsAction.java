package com.naver.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.naver.dao.AdminGoodsDAO;
import com.naver.model.GoodsBean;

@Controller
public class AdminGoodsAction {
	private AdminGoodsDAO admingoodsService;

	public void setAdmingoodsService(AdminGoodsDAO admingoodsService) {
		this.admingoodsService = admingoodsService;
	}
	
	@RequestMapping(value="/AdminGoodsList")
	public String adminGoodsList(HttpServletRequest request,
								HttpServletResponse response){
	List<GoodsBean> list=admingoodsService.getGoodsList();
	
	request.setAttribute("list", list);
	
	return "admingoods/admin_goods_list.jsp";
	
	}
	
	

}
