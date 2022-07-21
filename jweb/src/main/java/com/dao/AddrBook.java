package com.dao;

import java.io.Serializable;

public class AddrBook implements Serializable{
	private static final long serialVersionUID = 1000L;

	private String username;
	private String tel;
	private String emaill;
	private String gender;
	
	//생성자
	public AddrBook() {
		
	}
	
	//getter,setter

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
}


