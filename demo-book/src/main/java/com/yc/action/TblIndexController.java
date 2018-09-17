package com.yc.action;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@EnableAutoConfiguration
public class TblIndexController {
	
	//后台主页面
	@RequestMapping("/book.action")
	String index(){
		return "tbl_index";
	}
	
	//添加图书
	@RequestMapping("/tbl_book_add.action")
	String tblbookadd(){
		return "tbl_book_add";
	}
	
	//万能页面
	@RequestMapping("/tbl_codeing.action")
	String tblCodeing(){
		return "tbl_codeing";
	}
	
	//管理员登录页面
		@RequestMapping("/login")
		String tblLogin(){
			return "tbl_login";
		}
		
	public static void main(String[] args) throws Exception {
		SpringApplication.run(TblIndexController.class, args);
	}
}
