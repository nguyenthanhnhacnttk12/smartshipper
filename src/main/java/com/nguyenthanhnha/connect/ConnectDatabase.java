package com.nguyenthanhnha.connect;

import org.bson.types.ObjectId;

import com.mongodb.BasicDBObjectBuilder;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBObject;
import com.mongodb.MongoClient;

public class ConnectDatabase {

	public DBCollection ConnectCollection(String CollectionName) {

	       MongoClient mongoClient =  new MongoClient("localhost",27017);
	        DB db = mongoClient.getDB("demodb");
	        DBCollection coll = db.getCollection(CollectionName);
	        return coll;
	    }

	    public DBObject getWhereFind(String key, String value) {
	        BasicDBObjectBuilder whereBuilder = BasicDBObjectBuilder.start();

	       
	        whereBuilder.append(key, value);

	        DBObject where = whereBuilder.get();
	        System.out.println("Where: " + where.toString());
	        return where;
	    }
	    public DBObject getWhereFindById(String key, ObjectId value) {
	        BasicDBObjectBuilder whereBuilder = BasicDBObjectBuilder.start();

	       
	        whereBuilder.append(key, value);

	        DBObject where = whereBuilder.get();
	        System.out.println("Where: " + where.toString());
	        return where;
	    }
	    public DBObject getWhereLike(String key, String value) {
	        BasicDBObjectBuilder whereBuilder = BasicDBObjectBuilder.start();

	       
	        whereBuilder.push(key).add("$regex", ".*" + value + ".*");
	        whereBuilder.add("$options", "$i");
	        whereBuilder.pop();
	        whereBuilder.append("description", null);

	        DBObject where = whereBuilder.get();
	        System.out.println("Where: " + where.toString());
	        return where;
	    }
}
