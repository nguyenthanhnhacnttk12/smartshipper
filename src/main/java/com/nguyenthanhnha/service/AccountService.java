package com.nguyenthanhnha.service;

import java.util.ArrayList;
import java.util.List;

import com.mongodb.DBObject;
import com.nguyenthanhnha.entities.Account;

public interface AccountService {
	
	public ArrayList<Account> findAll();
	
	public boolean checkUser(String username);
	
	public Account login(String username, String password );
	
	public void add(Account accout);
	
	public void update(Account accout);
	
	public Account find(String username);

	public void delete(String account);
	
	public void logout(String username);
}
