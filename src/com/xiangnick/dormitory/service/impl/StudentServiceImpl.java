package com.xiangnick.dormitory.service.impl;

import javax.annotation.Resource;

import com.xiangnick.dormitory.mapper.StudentMapper;
import com.xiangnick.dormitory.mapper.StudentMapperCustomer;
import com.xiangnick.dormitory.po.QueryStudentVo;
import com.xiangnick.dormitory.po.Student;
import com.xiangnick.dormitory.service.StudentService;

public class StudentServiceImpl implements StudentService {

	@Resource
	private StudentMapper studentMapper;
	@Resource
	private StudentMapperCustomer studentMapperCustomer;
	public Student findStudentById(Integer id) throws Exception {
		return studentMapper.selectByPrimaryKey(id);
	}
	public Student findStudentByIdAndPassword(QueryStudentVo queryStudentVo) throws Exception{
		return studentMapperCustomer.findStudentByIdAndPassword(queryStudentVo);
	}
	public void updateStudent(Student student) throws Exception {
		studentMapper.updateByPrimaryKey(student);
	}
	public void deleteStudent(Integer id) throws Exception {
		studentMapper.deleteByPrimaryKey(id);
	}
	public boolean addStudent(Student student) throws Exception {
		int insert = studentMapper.insert(student);
		if(insert == 0)
		return false;
		else
			return true;
	}

}
