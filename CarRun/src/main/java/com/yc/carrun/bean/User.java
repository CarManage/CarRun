package com.yc.carrun.bean;

import java.sql.Timestamp;

import org.springframework.web.bind.annotation.RequestParam;

/**
 * 用户实体类
 */
public class User {
	
	private Integer uid;
	private String uname;
	private String upass;  		// 加密后的长度比较长
	private int  type;  		 
	private Timestamp regtime;	// 注册时间     Timestamp 带时分秒的日期
	private String email;	
	private String name;
	private String idcard;
	public String getIdcard() {
		return idcard;
	}
	public void setIdcard(String idcard) {
		this.idcard = idcard;
	}
	public Integer getUid() {
		return uid;
	}
	public void setUid(Integer uid) {
		this.uid = uid;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getUpass() {
		return upass;
	}
	public void setUpass(String upass) {
		this.upass = upass;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	public Timestamp getRegtime() {
		return regtime;
	}
	public void setRegtime(Timestamp regtime) {
		this.regtime = regtime;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	@Override
	public String toString() {
		return "User [uid=" + uid + ", uname=" + uname + ", upass=" + upass + ", type=" + type + ", regtime=" + regtime
				+ ", email=" + email + ", name=" + name + ", idcard=" + idcard + "]";
	}
	 
}
