package com.xiangnick.dormitory.controller;

import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.xiangnick.dormitory.po.Electricity;
import com.xiangnick.dormitory.po.QueryElectricityVo;
import com.xiangnick.dormitory.service.ElectricityService;

@Controller
@RequestMapping("/electricity")
// 窄化请求映射
public class ElectricityController {
	// 注入service
	@Resource
	private ElectricityService electricityService;
	
	@RequestMapping("/simplExport")
	@ResponseBody
	public String simplExport(Integer dId,HttpServletResponse response) throws Exception {
		
		boolean result = electricityService.simpleExportExcel(dId,response);
		return null;
	}
	@RequestMapping("/usePower")
	@ResponseBody
	public String usePower(QueryElectricityVo electricityVo,HttpServletResponse response) throws Exception {
		Electricity electricity = electricityVo.getElectricity();
		electricity.setTimedate(new Date());
		String power = electricityVo.getPower();
		if(power.equals("dota")){
			electricityVo.setPowerNum(0.50f);
		}
		if(power.equals("song")){
			electricityVo.setPowerNum(0.20f);
		}
		if(power.equals("movie")){
			electricityVo.setPowerNum(0.30f);
		}
		electricityVo.setElectricity(electricity );	
		int rows = electricityService.addElectricityByDidAndTimeDate(electricityVo);
		if(rows == 0 ){
			return "修改失败!";
		}
		return "修改成功!";
	}
	

	
	

}
