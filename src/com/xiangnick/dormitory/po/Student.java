package com.xiangnick.dormitory.po;

public class Student {
    private Integer id;

    private String username;

    private String password;

    private String phone;

    private String dormitory_id;

    private String u_type;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getDormitoryId() {
		return dormitory_id;
	}

	public void setDormitoryId(String dormitory_id) {
		this.dormitory_id = dormitory_id;
	}

	public String getuType() {
		return u_type;
	}

	public void setuType(String u_type) {
		this.u_type = u_type;
	}

	@Override
	public String toString() {
		return "Student [id=" + id + ", username=" + username + ", password="
				+ password + ", phone=" + phone + ", dormitory_id="
				+ dormitory_id + ", u_type=" + u_type + "]";
	}
}