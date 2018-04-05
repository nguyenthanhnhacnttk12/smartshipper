package com.nguyenthanhnha.service;

import java.util.ArrayList;

import com.nguyenthanhnha.entities.Product;

public interface ProductService {
	
	public ArrayList<Product> findALL();
	
	public ArrayList<Product> findByName(String name);
	
	public void add(Product product);
	
	public void update(Product product);
	
	public void delete(String id);
	
	public Product findById(String id);
}
