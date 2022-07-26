package com.dao;

import java.io.Serializable;

public class AddrBook implements Serializable{
	private static final long serialVersionUID = 1000L;
	private int num;
	private String username;
	private String tel;
	private String emaill;
	private String gender;
	private Date joinDate;
	
	//생성자
	public AddrBook() {
		
	}
	
	//getter,setter

	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	
	public void setUsername(String username) {
		this.username = username;
	}
	public String getUsername() {
		return username;
}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getTel() {
		return tel;
	}
	public void setEmail(String emaill) {
		this.emaill = emaill;
	}
	public String getEMail() {
		return emaill;
	}
	public void setgender(String gender) {
		this.gender = gender;
	}
	public String getgender() {
		return gender;
	}
	public Date getjoinDate() {
		return joinDate;
	}
	public Date setjoinDate(Date joinDate) {
		this.joinDate = joinDate;
	}
}


