package com.nguyenthanhnha.service;



import com.nguyenthanhnha.entities.ThongkeIndex;


public interface ThongkeindexService {
	
	public ThongkeIndex findAll();
	
	public void updatethanhvien(long sl);
	
	public void updatelike(long sl);

	public void updatedonhang(long sl);
	
	public void updatethoigian(long sl);
}
