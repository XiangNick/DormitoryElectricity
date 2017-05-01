package com.xiangnick.dormitory.mapper;

import java.util.List;

import com.xiangnick.dormitory.po.Dorimitory;

public interface DorimitoryMapperCustomer {
	public Dorimitory findDorimitoryByStudent(Integer sid) throws Exception;
	public List<Dorimitory> findAllDorimitory() throws Exception;
	public Integer getRidgepoleCount() throws Exception;
	public List<Integer> getRidgepole() throws Exception;
}
