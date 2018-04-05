package com.nguyenthanhnha.dao;

import java.util.ArrayList;

import com.nguyenthanhnha.entities.ThongkeIndex;

public interface ThongkeindexDAO {

	public ThongkeIndex findAll();
	
	public void updatethanhvien(long sl);
	
	public void updatelike(long sl);

	public void updatedonhang(long sl);
	
	public void updatethoigian(long sl);
	
	
}
