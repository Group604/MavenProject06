package com.naver.action;

import java.util.List;

import org.springframework.web.servlet.ModelAndView;

import com.naver.dao.GongjiDAO;
import com.naver.model.GongjiBean;

public class IndexGongjiAction {

	private GongjiDAO gongjiService;

	public void setGongjiService(GongjiDAO gongjiService) {
		this.gongjiService = gongjiService;
	}//스프링 setter DI 설정
	
	/* 메인화면에 최신공지 목록 5개 출력 */
	public ModelAndView index_gongji(){
		List<GongjiBean> ig_list=
				gongjiService.getIndex_gongjiList();
		//최신공지 목록 5개 가져오기
		
		ModelAndView ig_m=new ModelAndView();
		ig_m.addObject("ig_list",ig_list);
		ig_m.setViewName("index_gongji");
		//jsp폴더의 index_gongji.jsp 부페이지가 시랳ㅇ
		
		return ig_m;
	}
	
	
}
