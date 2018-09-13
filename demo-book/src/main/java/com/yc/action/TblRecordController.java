package com.yc.action;

import javax.annotation.Resource;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yc.dao.TblRecordDao;



@Controller
@EnableAutoConfiguration
public class TblRecordController {
	
	@Resource
	TblRecordDao dao;
	
	@RequestMapping("/findAllRecord.action")
	String findAll(Model m){
		m.addAttribute("list", dao.findAll());
		return "tbl_record";
	}
	
	public static void main(String[] args) throws Exception {
		SpringApplication.run(TblBookController.class, args);
	}

}
