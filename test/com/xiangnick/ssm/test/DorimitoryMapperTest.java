package com.xiangnick.ssm.test;

import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.xiangnick.dormitory.mapper.DorimitoryMapper;
import com.xiangnick.dormitory.mapper.DorimitoryMapperCustomer;
import com.xiangnick.dormitory.po.Dorimitory;

public class DorimitoryMapperTest {
	
	DorimitoryMapper dorimitoryMapper = null;
	DorimitoryMapperCustomer dorimitoryMapperCustomer = null;
	@Before
	public void prepare(){
		ApplicationContext applicationContext = new ClassPathXmlApplicationContext("spring/applicationContext-Dao.xml");
		dorimitoryMapper= (DorimitoryMapper) applicationContext.getBean("dorimitoryMapper");
		dorimitoryMapperCustomer= (DorimitoryMapperCustomer) applicationContext.getBean("dorimitoryMapperCustomer");
	}
	@Test
	public void findDorimitoryByUser() throws Exception{
		Dorimitory findDorimitoryByUser = dorimitoryMapperCustomer.findDorimitoryByStudent(2014220323);
		System.out.println(findDorimitoryByUser);
	}
	@Test
	public void addD(){
		Dorimitory record = new Dorimitory();
		record.setDormitoryId("10503");
		record.setRidgepole(10);
		int insert = dorimitoryMapper.insert(record );
		System.out.println(insert);
	}
	@Test
	public void deleteD(){
		int deleteByPrimaryKey = dorimitoryMapper.deleteByPrimaryKey("10503");
		System.out.println(deleteByPrimaryKey);
	}
	@Test
	public void undateD(){
		Dorimitory record = new Dorimitory();
		record.setDormitoryId("10503");
		record.setRidgepole(9);
		int insert = dorimitoryMapper.updateByPrimaryKey(record);
		System.out.println(insert);
	}
	@Test
	public void findAllD() throws Exception{
		List<Dorimitory> findAllDorimitory = dorimitoryMapperCustomer.findAllDorimitory();
		for (Dorimitory dorimitory : findAllDorimitory) {
			System.out.println(dorimitory.getDormitoryId());
		}
	}
	@Test
	public void getRidgepoleCount() throws Exception{
		Integer count = dorimitoryMapperCustomer.getRidgepoleCount();
		System.out.println(count);
	}
	
}
