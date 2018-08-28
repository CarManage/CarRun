package com.yc.CarRun.bean;

import java.sql.Timestamp;

import org.springframework.stereotype.Component;

@Component
public class CheXing {
	private Integer id;
	private String name;
	private Integer homo1;
	private Integer homo2;
	private String image;
	private String createman;
	private String price;
	private Timestamp time;
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
	public Integer getHomo1() {
		return homo1;
	}
	public void setHomo1(Integer homo1) {
		this.homo1 = homo1;
	}
	public Integer getHomo2() {
		return homo2;
	}
	public void setHomo2(Integer homo2) {
		this.homo2 = homo2;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getCreateman() {
		return createman;
	}
	public void setCreateman(String createman) {
		this.createman = createman;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public Timestamp getTime() {
		return time;
	}
	public void setTime(Timestamp time) {
		this.time = time;
	}
	
	
}
