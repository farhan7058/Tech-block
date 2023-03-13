package com.data_access_object;
import java.io.InputStream;
import java.io.Reader;
import java.math.BigDecimal;
import java.net.URL;
import java.sql.*;
import java.util.Calendar;

import com.entity.user;




public class userdao {
	Connection con;


	public userdao(Connection con) {
		
		this.con=con;
		
	}
	
	
	public Boolean insert(user objectuser) throws SQLException {
		
		Boolean f=false;
		
		String query="insert into user(name,email,password,gender,about) values (?,?,?,?,?)";
	PreparedStatement ps=con.prepareStatement(query);
	ps.setString(1,objectuser.getName());
	ps.setString(2,objectuser.getEmail());
	ps.setString(3, objectuser.getPassword());
	ps.setString(4, objectuser.getGender());
	ps.setString(5, objectuser.getAbout());
	
	ps.executeUpdate();
	f =true;
	return f;
	
	}
	 
	public user getvalue(String email ,String password) throws Exception {
		
		 user u=null;
		 String read="select * from user where email=? and password=?";
		
		 //set value in query
		 PreparedStatement ps=con.prepareStatement(read);
		 ps.setString(1,email);
		 ps.setString(2,password);
		
		 //get data from data base
		 ResultSet t= ps.executeQuery();
		 if(t.next()) {
			 u=new user();
			 String name =t.getString("name");
			 u.setName(name);
			 u.setPassword(t.getString("password"));
			 u.setEmail(t.getString("email"));
			 u.setAbout(t.getString("about"));
			 u.setId(t.getInt("id"));
			 u.setDateTime(t.getTimestamp("rdate"));
			 u.setProfile(t.getString("profile"));
			u.setGender(t.getString("gender"));
			 
		 }
		
		
		
		return u;
	}


public boolean update(user obj) throws SQLException {
	boolean f=false;
	String query="update user set name=?,email=?,password=?,gender=?,profile=? ,about=? where id=? ";     
	PreparedStatement pst=con.prepareStatement(query); 
	System.out.println(obj);
	pst.setString(1, obj.getName());
	pst.setString(2, obj.getEmail());
	pst.setString(3, obj.getPassword());
	pst.setString(4, obj.getGender());
	pst.setString(5, obj.getProfile());
	pst.setString(6, obj.getAbout());
	pst.setInt(7, obj.getId());
	pst.executeUpdate();
	return f=true;
	
}




	

}
