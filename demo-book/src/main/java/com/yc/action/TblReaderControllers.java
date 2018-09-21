package com.yc.action;


import java.io.File;
import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.yc.bean.TblReader;
import com.yc.biz.TblReaderBiz;
import com.yc.dao.AccountDao;
import com.yc.dao.TblBookDao;

@Controller
@EnableAutoConfiguration
public class TblReaderControllers {
    
	@Resource
	TblReaderBiz tblReaderBiz;
	@Resource
	AccountDao accountDao;
	@RequestMapping("logins.do")
	String logins(){
		return "login";
	}
	//登录
	@RequestMapping("login.do")
	public String login(String name , String pwd,HttpSession session,Model med){
		
		if(tblReaderBiz.login(name, pwd)){
	     TblReader auser= accountDao.findByReaderName(name);
		session.setAttribute("auser", auser);
		System.out.println(auser.getReaderName());
		System.out.println(auser.getReaderPhoto());
			return "index_a";
		} 
		med.addAttribute("error","用户名或密码输入错误!!!");		
		return "login";
		
	}
	
	@RequestMapping("register.do")
	String register(){
		return "register";
	}

	//注册
	@RequestMapping("newregister.do")
	public String newregister(String name,String names,String sex,String phone,String email,String money,
			String pwd,String pwds, @RequestParam(value="file")MultipartFile file, Model model,HttpServletRequest request){
	    String addres=null;
		TblReader tReader=new TblReader() ;
		tReader.setReaderName(name);
		tReader.setReaderXame(names);
		tReader.setReaderSex(sex);
		tReader.setReaderPhone(phone);
		tReader.setReaderEmail(email);
		tReader.setReaderMoney(money);
		tReader.setReaderPassword(pwd);
		tReader.setReaderAddres(addres);
		TblReader user  =  accountDao.findByReaderName(name);
		TblReader user1  =  accountDao.findByReaderXame(names);
		if (user!=null || user1!=null) {
			model.addAttribute("errors", "该账号或昵称已经被注册！！！");	
			return "register";
		}
		if (file.isEmpty()) {
			System.out.println("文件为空");
		}
		if (file.isEmpty()) {
			String fileName=null;
			tReader.setReaderPhoto(fileName);
			tblReaderBiz.register(tReader);
			System.out.println(tReader.getReaderPhoto());
			return "login";	
		}
		String path = request.getSession().getServletContext().getRealPath("/image");     
		String fileName = file.getOriginalFilename();
		//创建了一个File对象,名字是filepath,路径是path,名字是fileName。 
		File filepath = new File(path, fileName);
		if (!filepath.getParentFile().exists()) {
			filepath.getParentFile().mkdirs();
		}
		try {
			file.transferTo(filepath);
		} catch (IOException e) {
			e.printStackTrace();
		}     
		tReader.setReaderPhoto("image/"+fileName);
		tblReaderBiz.register(tReader);
		System.out.println(tReader.getReaderPhoto());
		return "login";	
	} 
	public static void main(String[] args) throws Exception {
		SpringApplication.run(TblReaderControllers.class, args);
	}
}
