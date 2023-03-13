package com.data_access_object;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.entity.categories;

public class postdao {
	private Connection con;

	public postdao(Connection con) {
		super();
		this.con = con;
	}
	
	
	public ArrayList<categories> getallcategory(){
		ArrayList<categories> list=new ArrayList<categories>();
		
		try {
			
			String q="select * from categories";
		   Statement st=this.con.createStatement();
			ResultSet rs=st.executeQuery(q);
			while(rs.next()) {
				
				int cid=rs.getInt("cid");
				String name=rs.getString("name");
				String description=rs.getString("description");
				categories c=new categories(cid,name,description);
				list.add(c);
			}
			
		}catch(Exception e) {
			
			
			System.out.println(e);
		}
		
		
		return list;
	}

}
