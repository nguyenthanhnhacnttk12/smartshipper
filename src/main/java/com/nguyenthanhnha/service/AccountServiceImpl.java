package com.nguyenthanhnha.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mongodb.DBObject;
import com.nguyenthanhnha.dao.AccountDAO;
import com.nguyenthanhnha.entities.Account;

@Service("accountService")
@Transactional
public class AccountServiceImpl implements AccountService{
	
	@Autowired
	private AccountDAO accountDAO;

	


	@Override
	public void add(Account accout) {
		accountDAO.add(accout);
		
	}


	@Override
	public ArrayList<Account> findAll() {
		// TODO Auto-generated method stub
		return accountDAO.findAll();
	}


	@Override
	public void update(Account accout) {
		accountDAO.update(accout);
		
	}


	@Override
	public Account find(String username) {
		return accountDAO.find(username);
	}


	@Override
	public void delete(String account) {
		accountDAO.delete(account);
		
	}


	@Override
	public boolean checkUser(String username) {
		
		return accountDAO.checkUser(username);
	}


	@Override
	public Account login(String username, String password) {
		
		return accountDAO.login(username, password);
	}


	@Override
	public void logout(String username) {
		accountDAO.logout(username);
		
	}
	
	




}
