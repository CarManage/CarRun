package com.yc.CarRun.web.action;

import java.io.IOException;
import java.sql.Timestamp;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.yc.CarRun.bean.Cars;
import com.yc.CarRun.bean.CheXi;
import com.yc.CarRun.bean.CheXing;
import com.yc.CarRun.bean.User;
import com.yc.CarRun.biz.CarsBiz;

import sun.misc.BASE64Encoder;

@Controller
public class CarsAction {

	@Resource
	CarsBiz cbiz;
	@Resource
	User user;
	@Resource
	CheXi chexi;
	@Resource
	CheXing chexing;
	
	@RequestMapping("/pinpai/Inpinpai.do")
	public String InsertPinpai(Cars car,HttpSession session,Model model,@RequestParam("img")MultipartFile file) throws IOException {
		user.setName("管理员");
		if(!file.isEmpty()) {
			ServletContext sc=session.getServletContext();
			//String diskPath=sc.getRealPath("/images/logo");
			String image="/images/logo/"+file.getOriginalFilename();
			car.setLogo(image);
		}
		
		Timestamp d = new Timestamp(System.currentTimeMillis()); 
		  car.setTime(d);
		  car.setCreateman(user.getName());
		cbiz.insert(car);
		return "pinpai/pinpai";
	}
	
	@RequestMapping("/pinpai/queryPinpai.do")
	public String queryPinpai(Model model) {
		model.addAttribute("Pinpai", cbiz.selectAllPinpai());
		return "pinpai/pinpai";
	}
	
	@RequestMapping("/product/InChexi.do")
	public String InertChexing(CheXi chexi,Integer homo,Model model) {
		user.setName("管理员");
		if(Integer.valueOf(chexi.getBaojia1())>=Integer.valueOf(chexi.getBaojia2())) {
			model.addAttribute("msg", "报价范围不合理，请重新输入");
		}
		Timestamp d = new Timestamp(System.currentTimeMillis()); 
		chexi.setHomo(homo);
		chexi.setTime(d);
		chexi.setCreateman(user.getName());
		cbiz.insertChexi(chexi);
		return "product/series";
	}
	
	@RequestMapping("/product/queryChexi.do")
	public String queryChexi(Model model,Integer homo) {
		model.addAttribute("Chexi", cbiz.selectChexiByHomo(homo));
		return "product/series";
	}
	
	@RequestMapping("/product/InCars.do")
	public String inertCars(CheXing chexing,CheXi chexi,HttpSession session,Model model,@RequestParam("img")MultipartFile file) {
		user.setName("管理员");
		if(Integer.valueOf(chexing.getPrice()) < Integer.valueOf(chexi.getBaojia1())  ||   Integer.valueOf(chexing.getPrice()) > Integer.valueOf(chexi.getBaojia2()) ){
			model.addAttribute("msg", "官方指导价不在报价范围内，请重新输入");
		}
		if(!file.isEmpty()) {
			ServletContext sc=session.getServletContext();
			//String diskPath=sc.getRealPath("/images/logo");
			String image="/images/cheshi/"+file.getOriginalFilename();
			chexing.setImage(image);
		}
		
		Timestamp d = new Timestamp(System.currentTimeMillis()); 
		
		chexing.setTime(d);
		chexing.setCreateman(user.getName());
		cbiz.insertCars(chexing);
		return "product/car";
	}
	
	@RequestMapping("/product/queryCars.do")
	public String queryCars(Model model,CheXing chexing) {
		model.addAttribute("Chexing", cbiz.selectCars(chexing));
		return "product/car";
	}
}
