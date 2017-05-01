package com.xiangnick.dormitory.controller;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import net.sf.json.JSONArray;
import net.sf.json.JsonConfig;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.xiangnick.dormitory.po.Dorimitory;
import com.xiangnick.dormitory.po.Electricity;
import com.xiangnick.dormitory.po.QueryElectricityVo;
import com.xiangnick.dormitory.po.QueryStudentVo;
import com.xiangnick.dormitory.po.Student;
import com.xiangnick.dormitory.service.DormitoryService;
import com.xiangnick.dormitory.service.ElectricityService;
import com.xiangnick.dormitory.service.StudentService;

@Controller
@RequestMapping("/student")
// 窄化请求映射
public class StudentController {
	// 注入service
	@Resource
	private StudentService studentService;
	@Resource
	private DormitoryService dormitoryService;
	@Resource
	private ElectricityService electricityService;
	
	
	@RequestMapping("/studentRegist")
	@ResponseBody
	public String studentRegist(Student student) throws Exception {
		student.setuType("1");
		String dormitoryId = student.getDormitoryId();
		Dorimitory dbDo = dormitoryService.findById(dormitoryId);
		if(dbDo == null){
			int ridgepole = Integer.parseInt(dormitoryId.substring(0, dormitoryId.length()-3));
			Dorimitory dormitory = new Dorimitory(dormitoryId,ridgepole);
			dormitoryService.addDormitory(dormitory);
		}
		boolean addStudent = studentService.addStudent(student);
		if(addStudent){
			Electricity electricity = new Electricity();
			electricity.setDormitoryId(dormitoryId);
			electricity.setTimedate(new Date());
			int dbCount = electricityService.findEleCountByDormitoryIdAndTime(electricity  );
			if(dbCount>0){
				//有记录了
				return "注册成功!";
			}else{
				//没记录
				Electricity newElectricity = new Electricity(student.getDormitoryId(), 0.50, 200.00, 150.00, 30.00f, new Date()) ;
				boolean addElectricity = electricityService.addElectricity(newElectricity );
				if(addElectricity)
					return "注册成功!";
				else
					return "注册失败!";
			}
		}
		return "注册失败!";
	}
	@RequestMapping("/studentLogin")
	@ResponseBody
	public String studentLogin(QueryStudentVo queryStudentVo,HttpSession session,HttpServletRequest request) throws Exception {
		Student dbStudent = studentService.findStudentByIdAndPassword(queryStudentVo);
		if(dbStudent != null){
			session.setAttribute("currentStudent", dbStudent);
			return "登录成功!";
		}
		return "登录失败!";
	}
	@RequestMapping("/check")
	public String check(HttpSession session,String page,HttpServletRequest request) throws Exception {
		Student currentStudent = (Student) session.getAttribute("currentStudent");
		if(currentStudent.getuType().equals("1")){
			Dorimitory findDorimitoryByStudent = dormitoryService.findDorimitoryByStudent(currentStudent.getId());
			List<Electricity> eleList = electricityService.findEleByDormitoryId(Integer.parseInt(findDorimitoryByStudent.getDormitoryId()));
			//dormitory_id:"10602",ele_price:"0.50",pre_deposit:"200.00",overage:"150.00",electricity:"30.00",timeDate:"2016-10-31"
			String elejsonList = writeList2Json(eleList, null);
			request.setAttribute("findDorimitory", findDorimitoryByStudent);
			request.setAttribute("eleList", elejsonList);
			return "jqGrid";
			}
		if(currentStudent.getuType().equals("0")){
			List<Dorimitory> dormitoryList = dormitoryService.findAllDorimitory();
			
			StringBuilder dorJson = new StringBuilder();
			dorJson.append("[");
			for (Dorimitory dorimitory : dormitoryList) {
				String msgstr = "\"name\":\""+dorimitory.getDormitoryId()+"\",\"type\":\"item\"";
				dorJson.append("{");
					dorJson.append(msgstr);
				dorJson.append("},");

			}
			dorJson.deleteCharAt(dorJson.length()-1);
			dorJson.append("]");
			request.setAttribute("dorJson", dorJson);
			return "admin";
		}
		return page;
	}
	@RequestMapping("/redirect")
	public String redirect(HttpSession session,String page) throws Exception {
		return page;
	}
	
	
	@RequestMapping("/logout")
	public String logout(HttpSession session) throws Exception {
		session.invalidate();
			return "loginAndRegist";
	}
	
	protected String writeList2Json(List list,String[] excludes) throws IOException {
		JsonConfig jc = new JsonConfig();
		jc.setExcludes(excludes);
		JSONArray jsonObject = JSONArray.fromObject(list,jc);
		String jsonArrayData = jsonObject.toString();
		return jsonArrayData;
		
	}
}
