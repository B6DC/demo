package com.yc.action;

import javax.annotation.Resource;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yc.dao.TblBookDao;

@Controller
@EnableAutoConfiguration
public class TblBookController {
	
	@Resource
	TblBookDao dao;
	
	@RequestMapping("/findAllBook")
	String findAllBook(Model m){
		m.addAttribute("list", dao.findAll());
		return "oihia";
	}
	
	public static void main(String[] args) throws Exception {
		SpringApplication.run(TblBookController.class, args);
	}
}