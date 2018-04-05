package com.nguyenthanhnha.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import com.nguyenthanhnha.dao.ProductDAO;
import com.nguyenthanhnha.entities.Product;

@Service("productService")
@Transactional
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductDAO productDAO;	
	
	@Override
	public ArrayList<Product> findALL() {
		
		return productDAO.findALL();
	}

	@Override
	public ArrayList<Product> findByName(String name) {
		// TODO Auto-generated method stub
		return productDAO.findByName(name);
	}

	@Override
	public void add(Product product) {
		// TODO Auto-generated method stub
		productDAO.add(product);
		
	}

	@Override
	public void update(Product product) {
		// TODO Auto-generated method stub
		productDAO.update(product);
	}

	@Override
	public void delete(String id) {
		// TODO Auto-generated method stub
		productDAO.delete(id);
	}

	@Override
	public Product findById(String id) {
		// TODO Auto-generated method stub
		return productDAO.findById(id);
	}

}
