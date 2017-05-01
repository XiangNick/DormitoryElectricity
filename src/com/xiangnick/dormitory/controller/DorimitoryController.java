package com.xiangnick.dormitory.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.xiangnick.dormitory.po.Dorimitory;
import com.xiangnick.dormitory.po.QueryDorimitoryVo;
import com.xiangnick.dormitory.service.DormitoryService;

@Controller
@RequestMapping("/dorimitory")
// 窄化请求映射
public class DorimitoryController {
	// 注入service
	@Resource
	private DormitoryService dormitoryService;
	
	@RequestMapping("/findAllDormitory")
	@ResponseBody
	public String findAllDormitory(HttpServletRequest request) throws Exception {
		List<Dorimitory> dormitoryList = dormitoryService.findAllDorimitory();
		request.setAttribute("dormitoryList", dormitoryList);
		return null;
	}
	@RequestMapping("/addDormitory")
	@ResponseBody
	public String addDormitory(Dorimitory dorimitory,HttpServletRequest request) throws Exception {
		Integer insert = dormitoryService.addDormitory(dorimitory);
		if(insert>0){
			return "添加成功!";
		}
		return "添加失败!";
	}
	@RequestMapping("/delDormitory")
	public String delDormitory(String did,HttpServletRequest request) throws Exception {
		Integer delCount = dormitoryService.delDormitory(did);
		if(delCount==0){
			return "删除失败!";
		}
		return "删除成功!";
	}

}
