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
import com.nguyenthanhnha.entities.ThongkeIndex;

@Repository
public class ThongkeindexImpl implements ThongkeindexDAO {

	ConnectDatabase cn = new ConnectDatabase();
    DBCollection mycoll = cn.ConnectCollection("thongkeindex");
	
	@Override
	public ThongkeIndex findAll() {
		try {
			ThongkeIndex thongke = new ThongkeIndex();
			DBCursor cursor = mycoll.find();
			
				DBObject doc = cursor.next();
				
				String id = doc.get("_id").toString();
				long thanhvien =Math.round(Double.parseDouble(doc.get("thanhvien").toString()));
				long like =Math.round(Double.parseDouble(doc.get("like").toString()));
				long donhang =Math.round(Double.parseDouble(doc.get("donhang").toString()));
				long thoigian =Math.round(Double.parseDouble(doc.get("thoigian").toString()));
				thongke = new ThongkeIndex(id,thanhvien,like,donhang,thoigian);
			
			cursor.close();
			System.out.println(thongke);
			return thongke;
			
		} catch (Exception e) {
			System.out.println("erro");
			return null;
		}
		
	}

	@Override
	public void updatethanhvien(long sl) {
		try {
			System.out.println("yes");
			DBCursor cursor = mycoll.find();	
				DBObject doc = cursor.next();
				String id = doc.get("_id").toString();
				long thanhvien =Math.round(Double.parseDouble(doc.get("thanhvien").toString()));
				cursor.close();
				ObjectId a = new ObjectId(id);
				DBObject find = new BasicDBObject().append("_id", a);
				DBObject value = new BasicDBObject();
				DBObject valuewithSet = new BasicDBObject();
				value.put("thanhvien",thanhvien+sl );
				valuewithSet.put("$set", value);
				mycoll.update(find, valuewithSet);
				System.out.println("yes");
		} catch (Exception e) {
			System.out.println("ere");
		}
	}

	@Override
	public void updatelike(long sl) {
		DBCursor cursor = mycoll.find();	
		DBObject doc = cursor.next();
		String id = doc.get("_id").toString();
		long thanhvien =Math.round(Double.parseDouble(doc.get("like").toString()));
		cursor.close();
		ObjectId a = new ObjectId(id);
		DBObject find = new BasicDBObject().append("_id", a);
		DBObject value = new BasicDBObject();
		DBObject valuewithSet = new BasicDBObject();
		value.put("like",thanhvien+sl );
		valuewithSet.put("$set", value);
		mycoll.update(find, valuewithSet);
		
	}

	@Override
	public void updatedonhang(long sl) {
		DBCursor cursor = mycoll.find();	
		DBObject doc = cursor.next();
		String id = doc.get("_id").toString();
		long thanhvien =Math.round(Double.parseDouble(doc.get("donhang").toString()));
		cursor.close();
		ObjectId a = new ObjectId(id);
		DBObject find = new BasicDBObject().append("_id", a);
		DBObject value = new BasicDBObject();
		DBObject valuewithSet = new BasicDBObject();
		value.put("donhang",thanhvien+sl );
		valuewithSet.put("$set", value);
		mycoll.update(find, valuewithSet);
		
	}

	@Override
	public void updatethoigian(long sl) {
		DBCursor cursor = mycoll.find();	
		DBObject doc = cursor.next();
		String id = doc.get("_id").toString();
		long thanhvien =Math.round(Double.parseDouble(doc.get("thoigian").toString()));
		cursor.close();
		ObjectId a = new ObjectId(id);
		DBObject find = new BasicDBObject().append("_id", a);
		DBObject value = new BasicDBObject();
		DBObject valuewithSet = new BasicDBObject();
		value.put("thoigian",thanhvien+sl );
		valuewithSet.put("$set", value);
		mycoll.update(find, valuewithSet);
		
	}

	
}
