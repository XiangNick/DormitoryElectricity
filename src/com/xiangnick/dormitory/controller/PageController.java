package com.xiangnick.dormitory.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/page")
// 窄化请求映射
public class PageController {
	// 注入service
	
	@RequestMapping("/redirect")
	public String redirect(HttpSession session,String page) throws Exception {
		return page;
	}

}
