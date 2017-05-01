package com.xiangnick.ssm.test;


import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.xiangnick.dormitory.mapper.StudentMapper;
import com.xiangnick.dormitory.mapper.StudentMapperCustomer;
import com.xiangnick.dormitory.po.QueryStudentVo;
import com.xiangnick.dormitory.po.Student;

public class StudentMapperTest {
	StudentMapper studentMapper = null;
	StudentMapperCustomer studentMapperCustomer = null;
	@Before
	public void prepare(){
		ApplicationContext applicationContext = new ClassPathXmlApplicationContext("spring/applicationContext-Dao.xml");
		studentMapper= (StudentMapper) applicationContext.getBean("studentMapper");
		studentMapperCustomer= (StudentMapperCustomer) applicationContext.getBean("studentMapperCustomer");
	}
	@Test
	public void testSelectByExample() {
	}

	@Test
	public void testSelectByPrimaryKey() {
		Student student = studentMapper.selectByPrimaryKey(2014100446);
		System.out.println(student);
	}
	@Test
	public void testSelectByPrimaryKeyAndPassword() throws Exception {
		QueryStudentVo queryStudentVo = new QueryStudentVo();
		Student student = new Student();
		student.setId(2014100446);
		student.setPassword("zx0925");
		queryStudentVo.setStudent(student);
		Student dbStudent = studentMapperCustomer.findStudentByIdAndPassword(queryStudentVo);
		System.out.println(dbStudent);
	}
	@Test
	public void testAddStudent() throws Exception {
		Student student = new Student();
		student.setId(2014100449);
		student.setPassword("zx0925");
		student.setDormitoryId("9532");
		student.setPhone("13685621653");
		student.setuType("1");
		student.setUsername("宙斯");
		int result = studentMapper.insert(student);
		System.out.println(result);
	}
	

}
