package com.nguyenthanhnha.dao;

import java.util.ArrayList;

import com.mongodb.DBObject;
import com.nguyenthanhnha.entities.Account;

public interface AccountDAO {
	
	
	public ArrayList<Account> findAll();
	
	public boolean checkUser(String username);
	
	public Account login(String username , String password);
	
	public void add(Account accout);
	
	public void update(Account accout);
	
	public Account find(String username);

	public void delete(String id);
	
	public void logout(String username);
		
}
