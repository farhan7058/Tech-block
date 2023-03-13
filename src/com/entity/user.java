package com.entity;
 import java.sql.*;
public class user {
	private int id;
	private String email;
	private String profile;
	private String name;
	private String password;
	private String about;
	private String  gender;
	private Timestamp dateTime;
	public String getProfile() {
		return profile;
	}
	public void setProfile(String profile) {
		this.profile = profile;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getAbout() {
		return about;
	}
	public void setAbout(String about) {
		this.about = about;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public Timestamp getDateTime() {
		return dateTime;
	}
	public void setDateTime(Timestamp dateTime) {
		this.dateTime = dateTime;
	}
	public user(String name ,String password, String email,String gender,String about ) {
		this.name=name;
		this.password=password;
		this.email=email;
		this.about=about;
		this.gender=gender;
		
		
		
	}
	public user() {
		
	}

	
	

}
