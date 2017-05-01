package com.xiangnick.dormitory.service.impl;

import java.io.File;
import java.io.FileInputStream;
import java.lang.reflect.Field;
import java.net.URLEncoder;
import java.util.List;
import java.util.Properties;

import javax.annotation.Resource;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;

import com.xiangnick.dormitory.mapper.ElectricityMapper;
import com.xiangnick.dormitory.mapper.ElectricityMapperCustomer;
import com.xiangnick.dormitory.po.Electricity;
import com.xiangnick.dormitory.po.QueryElectricityVo;
import com.xiangnick.dormitory.service.ElectricityService;

public class ElectricityServiceImpl implements ElectricityService {

	@Resource
	private ElectricityMapper electricityMapper;
	@Resource
	private ElectricityMapperCustomer electricityMapperCustomer;
	public Electricity findEleById(Integer id) throws Exception {
		return electricityMapper.selectByPrimaryKey(id);
	}


	public List<Electricity> findEleByDormitoryId(Integer dId) throws Exception {
		return electricityMapperCustomer.findElectricityByDorimitoryId(dId);
	}

	public int electricityMapperCustomer(Electricity electricity)
			throws Exception {
		return electricityMapperCustomer.findEleCountByDormitoryIdAndTime(electricity);
	}
	
	public void updateElectricity(Electricity electricity) throws Exception {
		electricityMapper.updateByPrimaryKeySelective(electricity);
	}

	public void deleteElectricity(Integer id) throws Exception {
		electricityMapper.deleteByPrimaryKey(id);
	}

	public boolean addElectricity(Electricity electricity) throws Exception {
		int insert = electricityMapper.insert(electricity);
			return (insert > 0);
	}

	public boolean simpleExportExcel(Integer dId,HttpServletResponse response) throws Exception {
		List<Electricity> eleList = findEleByDormitoryId(dId);
		if(null != eleList && eleList.size()>0){
			Field[] fields = eleList.get(0).getClass().getDeclaredFields();
			for (Field field : fields) {
				field.setAccessible(true);
			}
			File propertiesFile = new File(getClass().getClassLoader().getResource("note.properties").getFile());
			Properties note = new Properties();
			FileInputStream in = new FileInputStream(propertiesFile);
			note.load(in);
			
			HSSFWorkbook workbook = new HSSFWorkbook();
			String filename = dId+"宿舍电量使用情况.xls";
			HSSFSheet sheet = workbook.createSheet(filename);
			HSSFRow titleRow = sheet.createRow(0);//标题行
			for(int i = 0; i < fields.length; i++){
				titleRow.createCell(i).setCellValue(note.getProperty(fields[i].getName()));
			}
//			titleRow.getCell(cellnum)
			for (Electricity ele : eleList) {
				HSSFRow dataRow = sheet.createRow(sheet.getLastRowNum()+ 1);
				dataRow.createCell(0).setCellValue(ele.getDormitoryId());
				dataRow.createCell(1).setCellValue(ele.getElePrice());
				dataRow.createCell(2).setCellValue(ele.getPreDeposit());
				dataRow.createCell(3).setCellValue(ele.getOverage());
				dataRow.createCell(4).setCellValue(ele.getElectricity());
				dataRow.createCell(5).setCellValue(ele.getTimedate());
			}
			filename = URLEncoder.encode(filename, "UTF-8");
//			filename.replace("+", " ");
			//一个流，两个头
			response.setContentType("application/vnd.ms-excel");
			response.setHeader("content-disposition", "attachment;filename="+filename);
			ServletOutputStream out = response.getOutputStream();
			
			workbook.write(out);
			in.close();
		}
		return true;
	}

	public int addElectricityByDidAndTimeDate(QueryElectricityVo electricityVo)
			throws Exception {
		return electricityMapperCustomer.addElectricityByDidAndTimeDate(electricityVo);
	}


	public int findEleCountByDormitoryIdAndTime(Electricity electricity)
			throws Exception {
		return electricityMapperCustomer.findEleCountByDormitoryIdAndTime(electricity);
	}





}
