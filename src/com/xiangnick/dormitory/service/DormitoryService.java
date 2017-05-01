package com.xiangnick.dormitory.service;

import java.util.List;

import com.xiangnick.dormitory.po.Dorimitory;

public interface DormitoryService {

	public Dorimitory findDorimitoryByStudent(Integer sid) throws Exception;
	public List<Dorimitory> findAllDorimitory() throws Exception;
	public Dorimitory findById(String did) throws Exception;
	public Integer getRidgepoleCount() throws Exception;
	public List<Integer> getRidgepole() throws Exception;
	public Integer addDormitory(Dorimitory dormitory)throws Exception;
	public Integer delDormitory(String did)throws Exception;
}
