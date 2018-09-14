package com.yc.action;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@EnableAutoConfiguration
public class TblIndexController {
	
	@RequestMapping("/book.action")
	String index(){
		return "tbl_index";
	}
	
	@RequestMapping("/tbl_book_add.action")
	String tblbookadd(){
		return "tbl_book_add";
	}
	
	public static void main(String[] args) throws Exception {
		SpringApplication.run(TblBookController.class, args);
	}
}
