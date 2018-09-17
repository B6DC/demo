package com.yc.action;

import java.io.IOException;
import java.io.Writer;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yc.dao.TblOrdersDao;

@Controller
@EnableAutoConfiguration
public class TblOrdersController {
	
	@Resource
	TblOrdersDao dao;
	
	@RequestMapping("/findAllOrders.action")
	String findAll(Model m){
		m.addAttribute("list", dao.findAll());
		return "tbl_orders";
	}
	
	@RequestMapping("/deleteOrders.action")
	String deletebook(Integer oid,Writer out,HttpServletResponse response,HttpServletRequest request) throws IOException{
			dao.delete(oid);
		return "redirect:/findAllOrders.action";
	}
	
	public static void main(String[] args) throws Exception {
		SpringApplication.run(TblOrdersController.class, args);
	}
	
}
