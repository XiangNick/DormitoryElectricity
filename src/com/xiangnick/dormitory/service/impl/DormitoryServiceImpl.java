package com.xiangnick.dormitory.service.impl;

import java.util.List;

import javax.annotation.Resource;

import com.xiangnick.dormitory.mapper.DorimitoryMapper;
import com.xiangnick.dormitory.mapper.DorimitoryMapperCustomer;
import com.xiangnick.dormitory.po.Dorimitory;
import com.xiangnick.dormitory.service.DormitoryService;

public class DormitoryServiceImpl implements DormitoryService {

	@Resource
	private DorimitoryMapperCustomer mapperCustomer;
	@Resource
	private DorimitoryMapper dorimitoryMapper;
	public Dorimitory findDorimitoryByStudent(Integer sid) throws Exception {
		return mapperCustomer.findDorimitoryByStudent(sid);
	}
	public List<Dorimitory> findAllDorimitory() throws Exception {
		return mapperCustomer.findAllDorimitory();
	}
	public Integer getRidgepoleCount() throws Exception {
		return mapperCustomer.getRidgepoleCount();
	}
	public List<Integer> getRidgepole() throws Exception {
		return mapperCustomer.getRidgepole();
	}
	public Integer addDormitory(Dorimitory dormitory) throws Exception {
		return dorimitoryMapper.insert(dormitory);
	}
	public Integer delDormitory(String did) throws Exception {
		return dorimitoryMapper.deleteByPrimaryKey(did);
	}
	public Dorimitory findById(String did) throws Exception {
		return dorimitoryMapper.selectByPrimaryKey(did);
	}
}
