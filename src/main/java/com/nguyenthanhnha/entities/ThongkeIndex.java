package com.nguyenthanhnha.entities;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection="thongkeindex")
public class ThongkeIndex {

	@Id
	private String id;
	private long thanhvien;
	private long like;
	private long donhang;
	private long thoigian;
	
	public ThongkeIndex() {
		super();
	}
	
	public ThongkeIndex(String id, long thanhvien, long like, long donhang, long thoigian) {
		super();
		this.id = id;
		this.thanhvien = thanhvien;
		this.like = like;
		this.donhang = donhang;
		this.thoigian = thoigian;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public long getThanhvien() {
		return thanhvien;
	}

	public void setThanhvien(long thanhvien) {
		this.thanhvien = thanhvien;
	}

	public long getLike() {
		return like;
	}

	public void setLike(long like) {
		this.like = like;
	}

	public long getDonhang() {
		return donhang;
	}

	public void setDonhang(long donhang) {
		this.donhang = donhang;
	}

	public long getThoigian() {
		return thoigian;
	}

	public void setThoigian(long thoigian) {
		this.thoigian = thoigian;
	}
	
	
	
	
}
