package com.xiangnick.dormitory.mapper;

import com.xiangnick.dormitory.po.QueryStudentVo;
import com.xiangnick.dormitory.po.Student;

public interface StudentMapperCustomer {

	public Student findStudentByIdAndPassword(QueryStudentVo queryUserVo) throws Exception;
	
}
