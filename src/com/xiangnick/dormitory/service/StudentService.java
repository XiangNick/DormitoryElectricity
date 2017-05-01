package com.xiangnick.dormitory.service;

import com.xiangnick.dormitory.po.QueryStudentVo;
import com.xiangnick.dormitory.po.Student;

public interface StudentService {
	/**
	 * 根据id查询学生信息
	 * @param id
	 * @return Items
	 * @throws Exception
	 */
	public Student findStudentById(Integer id) throws Exception;
	
	public Student findStudentByIdAndPassword(QueryStudentVo queryStudentVo) throws Exception;
	/**
	 * 根据id修改Student，id必填
	 * @param id
	 * @param items
	 * @throws Exception
	 */
	public void updateStudent(Student student) throws Exception;
	/**
	 * 根据ID删除学生
	 * @param id
	 * @throws Exception
	 */
	public void deleteStudent(Integer id) throws Exception;
	/**
	 * 增加学生
	 * @param Student
	 * @throws Exception
	 */
	public boolean addStudent(Student student) throws Exception;
}
