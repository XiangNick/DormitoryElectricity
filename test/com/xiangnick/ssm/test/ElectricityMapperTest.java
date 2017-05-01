package com.xiangnick.ssm.test;


import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.xiangnick.dormitory.mapper.ElectricityMapper;
import com.xiangnick.dormitory.mapper.ElectricityMapperCustomer;
import com.xiangnick.dormitory.po.Electricity;
import com.xiangnick.dormitory.po.QueryElectricityVo;

public class ElectricityMapperTest {
	ElectricityMapper electricityMapper = null;
	ElectricityMapperCustomer electricityMapperCustomer = null;
	@Before
	public void prepare(){
		ApplicationContext applicationContext = new ClassPathXmlApplicationContext("spring/applicationContext-Dao.xml");
		electricityMapper= (ElectricityMapper) applicationContext.getBean("electricityMapper");
		electricityMapperCustomer= (ElectricityMapperCustomer) applicationContext.getBean("electricityMapperCustomer");
	}
	@Test
	public void testFindByForeignKey() throws Exception {
		List<Electricity> list = electricityMapperCustomer.findElectricityByDorimitoryId(10602);
		for(Electricity e : list){
			System.out.println(e);
		}
	}
	
	@Test
	public void testadd() throws Exception {
		Electricity record = new Electricity();
		record.setDormitoryId("10602");
		record.seteid(10);
		record.setElectricity(30.00f);
		record.setElePrice(0.50);
		record.setOverage(150.00);
		record.setPreDeposit(200.00);
		record.setTimedate(new Date());
		int insert = electricityMapper.insert(record );
		System.out.println(insert);
	}
	
	@Test
	public void testDel() throws Exception{
		QueryElectricityVo electricityVo = new QueryElectricityVo();
		electricityVo.setPowerNum(0.50f);
		Electricity electricity = new Electricity();
		electricity.setDormitoryId("10602");
		Date parse = new SimpleDateFormat("yyyy-MM-dd").parse("2017-4-20");
		electricity.setTimedate(parse);
		electricityVo.setElectricity(electricity );
		electricityMapperCustomer.addElectricityByDidAndTimeDate(electricityVo);
	}
	
	@Test
	public void findEleCountByDormitoryIdAndTime() throws Exception{
		Electricity electricity = new Electricity();
		electricity.setDormitoryId("10602");
		electricity.setTimedate(new Date());
		int count = electricityMapperCustomer.findEleCountByDormitoryIdAndTime(electricity );
		System.out.println(count);
	}

}
