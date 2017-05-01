package com.xiangnick.dormitory.mapper;

import java.util.List;

import com.xiangnick.dormitory.po.Electricity;
import com.xiangnick.dormitory.po.QueryElectricityVo;

public interface ElectricityMapperCustomer {
	public List<Electricity> findElectricityByDorimitoryId(Integer did) throws Exception;
	public int findEleCountByDormitoryIdAndTime(Electricity electricity) throws Exception;
	public int addElectricityByDidAndTimeDate(QueryElectricityVo electricityVo) throws Exception;
	public List<Electricity> findEleByDormitoryIdAndTime(QueryElectricityVo electricityVo) throws Exception;
}
