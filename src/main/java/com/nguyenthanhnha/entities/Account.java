package com.nguyenthanhnha.entities;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection="account")
public class Account {
	
	@Id
	private String id;
	private String username;
	private String password;
	private int numberphone;
	private String diachi;
	private String tieusu;
	private String fullname;
	private boolean status;
	
	
	
	public Account() {
		super();
	}
	
	

	public int getNumberphone() {
		return numberphone;
	}



	public void setNumberphone(int numberphone) {
		this.numberphone = numberphone;
	}



	public String getDiachi() {
		return diachi;
	}



	public void setDiachi(String diachi) {
		this.diachi = diachi;
	}



	public String getTieusu() {
		return tieusu;
	}



	public void setTieusu(String tieusu) {
		this.tieusu = tieusu;
	}



	public Account(String id, String username, String password, int numberphone, String diachi, String tieusu,
			String fullname, boolean status) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;
		this.numberphone = numberphone;
		this.diachi = diachi;
		this.tieusu = tieusu;
		this.fullname = fullname;
		this.status = status;
	}



	public String getId() {
		return id;
	}
	public void setId(String id) {
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
	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	public boolean isStatus() {
		return status;
	}
	public void setStatus(boolean status) {
		this.status = status;
	}
	
	
	
}
