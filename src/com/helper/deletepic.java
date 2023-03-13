package com.helper;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

public class deletepic {
	public static boolean delete(String path) {
		boolean f=false;
		File fobj=new File(path);
		
		f=fobj.delete();
		return f;
		
	}
	
	
	public static boolean savepic(InputStream Is,String path) {
		boolean f=false;
		
		try {
			byte b[]=new byte[Is.available()];
			Is.read(b);
			FileOutputStream fs=new FileOutputStream(path);
			fs.write(b);
			fs.flush();
			fs.close();
		} catch (IOException e) {
		
			e.printStackTrace();
		}
		
		f=true;
		return f;
	}
	

}
