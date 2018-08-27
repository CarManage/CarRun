package com.yc.CarRun.bean;

import java.sql.Timestamp;

import org.springframework.stereotype.Component;
@Component
public class CheXi {

	private Integer id;
	private String name;
	private Integer homo;
	private String baojia1;
	private String baojia2;
	private Timestamp time;
	private String createman;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getHomo() {
		return homo;
	}
	public void setHomo(Integer homo) {
		this.homo = homo;
	}
	public String getBaojia1() {
		return baojia1;
	}
	public void setBaojia1(String baojia1) {
		this.baojia1 = baojia1;
	}
	public String getBaojia2() {
		return baojia2;
	}
	public void setBaojia2(String baojia2) {
		this.baojia2 = baojia2;
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
