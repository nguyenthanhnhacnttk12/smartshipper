package com.nguyenthanhnha.dao;

import java.util.ArrayList;
import java.util.List;

import org.bson.types.ObjectId;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.stereotype.Repository;

import com.mongodb.BasicDBObject;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;
import com.nguyenthanhnha.connect.ConnectDatabase;
import com.nguyenthanhnha.entities.Account;





@Repository
public class AccountDAOImpl implements AccountDAO {

	ConnectDatabase cn = new ConnectDatabase();
    DBCollection mycoll = cn.ConnectCollection("account");

	private MongoTemplate mongo;
	
	@Override
	public ArrayList<Account> findAll() {
		try {
            ArrayList<Account> listDM = new ArrayList<Account>();
            DBCursor cursor = mycoll.find();
            while (cursor.hasNext()) {
                DBObject doc = cursor.next();
                String id = doc.get("_id").toString();
                String email = doc.get("username").toString();
                String password = doc.get("password").toString();
                String fullname = doc.get("fullname").toString();
                int numberphone =Integer.parseInt(doc.get("sdt").toString().trim());
                String diachi = doc.get("diachi").toString();
                String tieusu = doc.get("tieusu").toString();
                boolean status = (boolean)doc.get("status");
                Account dm = new Account(id, email, password, numberphone, diachi, tieusu, fullname, status);
                listDM.add(dm);
            }
            cursor.close();
            return listDM;
        } catch (Exception er) {
        	return new ArrayList<Account>();
        }
		
	}

	@Override
	public void add(Account accout) {
		
            BasicDBObject doc = new BasicDBObject();
    		doc.append("username",accout.getUsername());
    		doc.append("password",accout.getPassword());
    		doc.append("fullname",accout.getFullname());
    		doc.append("sdt","123456789");
    		doc.append("diachi","");
    		doc.append("tieusu","");
    		doc.append("status",true);
    		mycoll.insert(doc);
       
		
		
	}

	@Override
	public void update(Account accout) {
		ObjectId a = new ObjectId(accout.getId());
		System.out.println(accout.getUsername());
		DBObject find = new BasicDBObject().append("_id",a);
		DBObject value = new BasicDBObject();
		DBObject valuewithSet = new BasicDBObject();
		value.put("fullname", accout.getFullname());
		value.put("sdt", accout.getNumberphone());
		value.put("diachi", accout.getDiachi());
		value.put("tieusu", accout.getTieusu());
		valuewithSet.put("$set", value);
		mycoll.update(find, valuewithSet);
		
		
	
		System.out.println(accout.getUsername());
	}

	

	@Override
	public void delete(String accout) {
		BasicDBObject document = new BasicDBObject();
		document.put("username", accout);
		mycoll.remove(document);
		System.out.println(document);
		
	}

	@Override
	public Account find(String id) {
		ObjectId a = new ObjectId(id);
		 Account account = new Account();
		 DBObject where = cn.getWhereFindById("_id", a);
		 DBCursor cursor = mycoll.find(where);
		 System.out.println(cursor);
		 while (cursor.hasNext()) {
         DBObject doc = cursor.next();
        
         String username1 = doc.get("username").toString();
         String password = doc.get("password").toString();
         String fullname = doc.get("fullname").toString();
         int numberphone =Integer.parseInt(doc.get("sdt").toString().trim());
         String diachi = doc.get("diachi").toString();
         String tieusu = doc.get("tieusu").toString();
         boolean status = (boolean)doc.get("status");
         account = new Account(id, username1, password, numberphone, diachi, tieusu, fullname, status);
		 }
		
         cursor.close();
         System.out.println(account);
         return account;
		
	}

	@Override
	public boolean checkUser(String username) {
		try {
			boolean check = true;
            ArrayList<Account> listDM = new ArrayList<Account>();
            DBCursor cursor = mycoll.find();
            while (cursor.hasNext()) {
                DBObject doc = cursor.next();
                String checkuser = doc.get("username").toString();
                if(checkuser.equals(username)) {
                	check = false;
                	break;
                }
            }
            return check;
        } catch (Exception er) {
        	return false;
        }
	}

	@Override
	public Account login(String username, String password) {
		DBObject find = new BasicDBObject().append("username", username);
		DBObject value = new BasicDBObject();
		DBObject valuewithSet = new BasicDBObject();
		
		for(Account a : findAll()) {
			if(username.equals(a.getUsername()) && password.equals(a.getPassword())) {
				value.put("status",true);
				valuewithSet.put("$set", value);
				mycoll.update(find, valuewithSet);
				return a;
				}
		}
		return null;
	}

	@Override
	public void logout(String username) {
		ObjectId a = new ObjectId(username);
		DBObject find = new BasicDBObject().append("_id",a);
		DBObject value = new BasicDBObject();
		DBObject valuewithSet = new BasicDBObject();
		value.put("status",false);
		valuewithSet.put("$set", value);
		mycoll.update(find, valuewithSet);
		
	}







}
