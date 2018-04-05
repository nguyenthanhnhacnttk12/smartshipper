package com.nguyenthanhnha.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.nguyenthanhnha.dao.ThongkeindexDAO;
import com.nguyenthanhnha.entities.ThongkeIndex;

@Service("thongkeindexService")
@Transactional
public class ThongkeindexServiceImpl implements ThongkeindexService{
	
	@Autowired
	private ThongkeindexDAO thongkeindexDAO;

	@Override
	public ThongkeIndex findAll() {
		
		return thongkeindexDAO.findAll();
	}

	@Override
	public void updatethanhvien(long sl) {
		thongkeindexDAO.updatethanhvien(sl);
		
	}

	@Override
	public void updatelike(long sl) {
		thongkeindexDAO.updatelike(sl);
		
	}

	@Override
	public void updatedonhang(long sl) {
		thongkeindexDAO.updatedonhang(sl);
		
	}

	@Override
	public void updatethoigian(long sl) {
		thongkeindexDAO.updatethoigian(sl);
		
	}
	
	
}
