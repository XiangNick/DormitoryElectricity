package com.xiangnick.dormitory.service;

import java.util.List;

import javax.servlet.http.HttpServletResponse;

import com.xiangnick.dormitory.po.Electricity;
import com.xiangnick.dormitory.po.QueryElectricityVo;

//With dorimitory
public interface ElectricityService {
	public Electricity findEleById(Integer id) throws Exception;
	
	public int findEleCountByDormitoryIdAndTime(Electricity electricity) throws Exception;
	public List<Electricity> findEleByDormitoryId(Integer dId) throws Exception;
	public void updateElectricity(Electricity electricity) throws Exception;
	public void deleteElectricity(Integer id) throws Exception;
	public boolean addElectricity(Electricity electricity) throws Exception;
	public boolean simpleExportExcel(Integer dId, HttpServletResponse response) throws Exception;
	public int addElectricityByDidAndTimeDate(QueryElectricityVo electricityVo) throws Exception;
}
