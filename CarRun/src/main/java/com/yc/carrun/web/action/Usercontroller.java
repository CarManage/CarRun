package com.yc.carrun.web.action;

import java.sql.Timestamp;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.yc.carrun.bean.User;
import com.yc.carrun.biz.MD5Utils;
import com.yc.carrun.biz.myUtils;
import com.yc.carrun.dao.UserDao;

@Controller
public class Usercontroller {
	@Resource
	UserDao ud;

	// 接受请求并跳转到相关的页面
	@RequestMapping("/user.do")
	public String distinguish(@RequestParam("op") String op) {
		if (op.equals("login")) {
			return "login";
		} else if (op.equals("reg")) {
			return "reg";
		}else if(op.equals("miss")){
			return "misspwd";
			
		}
		return "failure";

	}

	// 登录提交处理
	@PostMapping("/form.do")
	public String loginForm(@RequestParam("uname") String name, @RequestParam("upass") String pwd, Model model) {
		User user = new User();
		user.setUname(name);
		user.setUpass(MD5Utils.md5(pwd));

		if (ud.select(user) == null) {
			model.addAttribute("error", "用户名或密码错误！");
			return "login";
		}
		model.addAttribute("msg", name);
		return "main";

	}

	// 注册提交处理
	@PostMapping("/forms.do")
	public String regForm(@RequestParam("uname") String name, @RequestParam("upass") String pwd,
			@RequestParam("name") String label, @RequestParam("IDcard") String ID, @RequestParam("email") String email,
			Model model) {

		myUtils myUtils = new myUtils();
		try {
			String ads = myUtils.sendMail(email);
			model.addAttribute("msg", "邮件发送成功,请输入pin");
			model.addAttribute("pin", ads);
			model.addAttribute("uname", name);
			model.addAttribute("upass", pwd);
			model.addAttribute("name", label);
			model.addAttribute("type", 1);
			model.addAttribute("email", email);
			model.addAttribute("Idcard", ID);

			return "pin";
		} catch (Exception el) {
			return "false";
		}

	}
//注册邮箱验证处理
	@PostMapping("/pass.do")
	public String pinForm(@RequestParam("uname") String name, @RequestParam("upass") String pwd,
			@RequestParam("name") String label, @RequestParam("Idcard") String ID, @RequestParam("email") String email,
			@RequestParam("type") String type, @RequestParam("pin") String pin, @RequestParam("pin1") String pin1,
			Model model) {
		Timestamp now = new Timestamp(System.currentTimeMillis());
		User user = new User();
		user.setRegtime(now);
		user.setUname(name);
		user.setName(label);
		user.setUpass(MD5Utils.md5(pwd));
		user.setType(1);
		user.setEmail(email);
		user.setIdcard(ID);
		System.out.println(pin);
		System.out.println(pin);
		if (pin.equals(pin1)) {
			ud.reg(user);
			model.addAttribute("mssg", "注册成功 ，请登录！");
			return "login";
		}
		model.addAttribute("msg", "验证码错误 ，请重新注册！");
		return "reg";
	}
//忘记密码通过用户名查询email
	@PostMapping("/miss.do")
	public String regForm(@RequestParam("uname") String name,  
			Model model) {
		User user = new User();
		user.setUname(name);
	 
   String email=ud.selectEmail(user);
   
   if("".equals(email)||email==null){
	   //邮箱为空，则返回，查无此用户名的邮箱
	   model.addAttribute("msg", "查无"+name+"的邮箱");
	   return "misspwd";
   }else{
		myUtils myUtils = new myUtils();
		try {
			String ads= myUtils.sendMail(email);
			model.addAttribute("msg", "已发送pin到您的邮箱");
			model.addAttribute("pin", ads);
			model.addAttribute("uname", name);
			return "misspin";
		} catch (Exception el) {
			return "false";
		}	  
   }
	}
	//忘记密码验证码判断处理
	@PostMapping("/resetpwd.do")
	public String pinForm(@RequestParam("uname") String name, @RequestParam("upass") String pwd,
  @RequestParam("pin") String pin, @RequestParam("pin1") String pin1,
			Model model) {
		User user = new User();
		System.out.println(name);
		System.out.println(pwd);
		user.setUname(name);
		user.setUpass(MD5Utils.md5(pwd));
		if (pin.equals(pin1)) {
			ud.updatepwd(user);
			model.addAttribute("mssg", "修改密码成功 ，请登录！");
			return "login";
		}
		model.addAttribute("mssg", "验证码错误,请重新输入!");
		return "misspwd";
	}

}
