package com.xiangnick.dormitory.po;

public class Dorimitory {
    private String dormitory_id;
    
    private Integer ridgepole;


    public String getDormitoryId() {
		return dormitory_id;
	}

	public void setDormitoryId(String dormitory_id) {
		this.dormitory_id = dormitory_id;
	}

	public Integer getRidgepole() {
        return ridgepole;
    }

    public void setRidgepole(Integer ridgepole) {
        this.ridgepole = ridgepole;
    }

	public Dorimitory() {
		super();
	}

	public Dorimitory(String dormitory_id, Integer ridgepole) {
		super();
		this.dormitory_id = dormitory_id;
		this.ridgepole = ridgepole;
	}
    
}
