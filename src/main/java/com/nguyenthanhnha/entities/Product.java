package com.nguyenthanhnha.entities;

import java.util.Date;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection="Product")
public class Product {
	
	@Id
	private String id;
	private String name;
	private String email;
	private int numberphone;
	private int khuvuc;
	private Date datetime;
	private Date datetimess;
	private String addressto;
	private String addressfrom;
	private String mota;
	private boolean status;
	
	public Product() {
		super();
	}

	

	public Date getDatetimess() {
		return datetimess;
	}



	public void setDatetimess(Date datetimess) {
		this.datetimess = datetimess;
	}



	


	public int getKhuvuc() {
		return khuvuc;
	}



	public void setKhuvuc(int khuvuc) {
		this.khuvuc = khuvuc;
	}



	public Product(String id, String name, String email, int numberphone, int khuvuc, Date datetime, Date datetimess,
			String addressto, String addressfrom, String mota, boolean status) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.numberphone = numberphone;
		this.khuvuc = khuvuc;
		this.datetime = datetime;
		this.datetimess = datetimess;
		this.addressto = addressto;
		this.addressfrom = addressfrom;
		this.mota = mota;
		this.status = status;
	}



	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getNumberphone() {
		return numberphone;
	}

	public void setNumberphone(int numberphone) {
		this.numberphone = numberphone;
	}

	public Date getDatetime() {
		return datetime;
	}

	public void setDatetime(Date datetime) {
		this.datetime = datetime;
	}

	public String getAddressto() {
		return addressto;
	}

	public void setAddressto(String addressto) {
		this.addressto = addressto;
	}

	public String getAddressfrom() {
		return addressfrom;
	}

	public void setAddressfrom(String addressfrom) {
		this.addressfrom = addressfrom;
	}

	public String getMota() {
		return mota;
	}

	public void setMota(String mota) {
		this.mota = mota;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}


	
	
}
