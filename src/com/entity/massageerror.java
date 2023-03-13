package com.entity;
import java.sql.*;

public class massageerror {
	private String contain;
	private String type;
	private String css;
	public String getContain() {
		return contain;
	}
	public void setContain(String contain) {
		this.contain = contain;
	}
	public String getType() {
		return type;
	}
	
	public void setType(String type) {
		this.type = type;
	}
	public String getCss() {
		return css;
	}
	public void setCss(String css) {
		this.css = css;
	}
	public massageerror(String contain, String type, String css) {
	
		this.contain = contain;
		this.type = type;
		this.css = css;
	}
}
