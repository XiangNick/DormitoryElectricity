package com.xiangnick.dormitory.po;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Electricity {
	private String dormitory_id;
	private Double ele_price;
	private Double pre_deposit;
	private Double overage;
	private Float electricity;
	private Date timedate;
	
	private Integer eId;

	public Integer geteid() {
		return eId;
	}

	public void seteid(Integer eId) {
		this.eId = eId;
	}

	public Double getElePrice() {
		return ele_price;
	}

	public void setElePrice(Double ele_price) {
		this.ele_price = ele_price;
	}

	public Double getPreDeposit() {
		return pre_deposit;
	}

	public void setPreDeposit(Double pre_deposit) {
		this.pre_deposit = pre_deposit;
	}

	public Double getOverage() {
		return overage;
	}

	public void setOverage(Double overage) {
		this.overage = overage;
	}

	public Float getElectricity() {
		return electricity;
	}

	public void setElectricity(Float electricity) {
		this.electricity = electricity;
	}

	public String getTimedate() {
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		String format = dateFormat.format(timedate);
		return format;
	}

	public void setTimedate(Date timedate) {
		this.timedate = timedate;
	}

	public String getDormitoryId() {
		return dormitory_id;
	}

	public void setDormitoryId(String dormitory_id) {
		this.dormitory_id = dormitory_id;
	}

	@Override
	public String toString() {
		return "Electricity [eId=" + eId + ", ele_price=" + ele_price
				+ ", pre_deposit=" + pre_deposit + ", overage=" + overage
				+ ", electricity=" + electricity + ", timedate=" + timedate
				+ ", dormitory_id=" + dormitory_id + "]";
	}

	public Electricity() {
		super();
	}

	public Electricity(String dormitory_id, Double ele_price,
			Double pre_deposit, Double overage, Float electricity, Date timedate) {
		super();
		this.dormitory_id = dormitory_id;
		this.ele_price = ele_price;
		this.pre_deposit = pre_deposit;
		this.overage = overage;
		this.electricity = electricity;
		this.timedate = timedate;
	}



    
}