package com.nguyenthanhnha.dao;

import java.util.ArrayList;
import java.util.Date;

import org.bson.types.ObjectId;
import org.springframework.stereotype.Repository;

import com.mongodb.BasicDBObject;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;
import com.nguyenthanhnha.connect.ConnectDatabase;
import com.nguyenthanhnha.entities.Account;
import com.nguyenthanhnha.entities.Product;


@Repository
public class ProductDAOImpl implements ProductDAO {

	ConnectDatabase cn = new ConnectDatabase();
    DBCollection mycoll = cn.ConnectCollection("Product");
	
	@Override
	public ArrayList<Product> findALL() {
		try {
			
            ArrayList<Product> listproduct = new ArrayList<Product>();
            System.out.println(listproduct);
            DBCursor cursor = mycoll.find();
            while (cursor.hasNext()) {
                DBObject doc = cursor.next();
                String id = doc.get("_id").toString();
                String email = doc.get("email").toString();
                String tenhang = doc.get("tenhang").toString();
                int numberphone = Integer.parseInt(doc.get("sdt").toString());
                int khuvuc = Integer.parseInt(doc.get("khuvuc").toString());
                Date thoigian =(Date)doc.get("thoigian");
                Date thoigianss = (Date)doc.get("thoigianht");
                String addressto = doc.get("diachigui").toString();
                String addressfrom = doc.get("diachinhan").toString();
                String mota = doc.get("mota").toString();
                boolean status = (boolean)doc.get("status");
                Product product = new Product(id, tenhang, email, numberphone, khuvuc, thoigian, thoigianss, addressto, addressfrom, mota, status);
                listproduct.add(product);
            }
            cursor.close();
            System.out.println(listproduct);
            return listproduct;
        } catch (Exception er) {
        	return null;
        }
	}

	@Override
	public ArrayList<Product> findByName(String name) {
		try {
			
            ArrayList<Product> listproduct = new ArrayList<Product>();
            DBObject where = cn.getWhereFind("email",name);
   		 	DBCursor cursor = mycoll.find(where);
            while (cursor.hasNext()) {
                DBObject doc = cursor.next();
                String id = doc.get("_id").toString();
                String email = doc.get("email").toString();
                String tenhang = doc.get("tenhang").toString();
                int numberphone = Integer.parseInt(doc.get("sdt").toString());
                int khuvuc = Integer.parseInt(doc.get("khuvuc").toString());
                Date thoigian = (Date)doc.get("thoigian");
                Date thoigianss = (Date)doc.get("thoigianht");
                String addressto = doc.get("diachigui").toString();
                String addressfrom = doc.get("diachinhan").toString();
                String mota = doc.get("mota").toString();
                boolean status = (boolean)doc.get("status");
                Product product = new Product(id, tenhang, email, numberphone, khuvuc, thoigian, thoigianss, addressto, addressfrom, mota, status);
                listproduct.add(product);
            }
            cursor.close();
            return listproduct;
        } catch (Exception er) {
        	
        	return new ArrayList<Product>();
        }
		 
	}
	
	@Override
	public Product findById(String id) {
		try {
			System.out.println("check");
			ObjectId a = new ObjectId(id);
			Product product = new Product();
            DBObject where = cn.getWhereFindById("_id",a);
   		 	DBCursor cursor = mycoll.find(where);
            while (cursor.hasNext()) {
                DBObject doc = cursor.next();
                
                String email = doc.get("email").toString();
                String tenhang = doc.get("tenhang").toString();
                int numberphone = Integer.parseInt(doc.get("sdt").toString());
                int khuvuc = Integer.parseInt(doc.get("khuvuc").toString());
                Date thoigian = (Date)doc.get("thoigian");
                Date thoigianss = (Date)doc.get("thoigianht");
                String addressto = doc.get("diachigui").toString();
                String addressfrom = doc.get("diachinhan").toString();
                String mota = doc.get("mota").toString();
                boolean status = (boolean)doc.get("status");
                product = new Product(id, tenhang, email, numberphone, khuvuc, thoigian, thoigianss, addressto, addressfrom, mota, status);
              
            }
            cursor.close();
            return product;
        } catch (Exception er) {
        	
        	return null;
        }
		 
	}

	@Override
	public void add(Product product) {
		try {
			Date a = new Date();
            BasicDBObject doc = new BasicDBObject();
    		doc.append("email",product.getEmail() );
    		doc.append("tenhang",product.getName() );
    		doc.append("sdt",product.getNumberphone() );
    		doc.append("khuvuc",product.getKhuvuc() );
    		doc.append("thoigian",a);
    		doc.append("thoigianht",a);
    		doc.append("diachigui",product.getAddressto() );
    		doc.append("diachinhan",product.getAddressfrom() );
    		doc.append("mota",product.getMota() );
    		doc.append("status",false );
    		mycoll.insert(doc);
		} catch (Exception er) {
			System.out.println("error");
		}
		
	}

	@Override
	public void update(Product product) {
		System.out.println(product.getAddressfrom());
		ObjectId a = new ObjectId(product.getId());
		DBObject find = new BasicDBObject().append("_id", a);
		DBObject value = new BasicDBObject();
		DBObject valuewithSet = new BasicDBObject();
		value.put("tenhang",product.getName() );
		value.put("sdt",product.getNumberphone() );
		value.put("khuvuc",product.getKhuvuc() );
		value.put("thoigian",new Date() );
		value.put("thoigianht",new Date() );
		value.put("diachigui",product.getAddressto() );
		value.put("dachinhan",product.getAddressfrom() );
		value.put("mota",product.getMota() );
		valuewithSet.put("$set", value);
		mycoll.update(find, valuewithSet);
		
	}

	@Override
	public void delete(String id) {
		try {
			ObjectId a = new ObjectId(id);
			System.out.println("b"+a);
			BasicDBObject document = new BasicDBObject();
			document.put("_id", a);
			mycoll.remove(document);
			System.out.println(document);
		} catch (Exception e) {
			System.out.println("error");
		}
	}
	
}
