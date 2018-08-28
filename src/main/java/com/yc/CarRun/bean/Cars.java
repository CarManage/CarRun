package com.yc.CarRun.bean;

import java.sql.Timestamp;

import org.springframework.stereotype.Component;
@Component
public class Cars {
	private Integer id;
	private String logo;
	private String name;
	
	private Timestamp time;
	private String createman;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getLogo() {
		return logo;
	}
	public void setLogo(String logo) {
		this.logo = logo;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Timestamp getTime() {
		return time;
	}
	public void setTime(Timestamp time) {
		this.time = time;
	}
	public String getCreateman() {
		return createman;
	}
	public void setCreateman(String createman) {
		this.createman = createman;
	}
	
	
}
