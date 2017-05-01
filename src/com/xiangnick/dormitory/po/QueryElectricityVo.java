package com.xiangnick.dormitory.po;

public class QueryElectricityVo {
	private Electricity electricity;
	private ElectricityCustomer electricityCustomer;
	private String power;
	private Float powerNum;
	
	public Float getPowerNum() {
		return powerNum;
	}
	public void setPowerNum(Float powerNum) {
		this.powerNum = powerNum;
	}
	public String getPower() {
		return power;
	}
	public void setPower(String power) {
		this.power = power;
	}
	public Electricity getElectricity() {
		return electricity;
	}
	public void setElectricity(Electricity electricity) {
		this.electricity = electricity;
	}
	public ElectricityCustomer getElectricityCustomer() {
		return electricityCustomer;
	}
	public void setElectricityCustomer(ElectricityCustomer electricityCustomer) {
		this.electricityCustomer = electricityCustomer;
	}
	
}
