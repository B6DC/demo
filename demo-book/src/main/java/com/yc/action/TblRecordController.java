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
	
	@RequestMapping("/deleteRecord.action")
	String deleterecord(Integer tid,Writer out,HttpServletResponse response,HttpServletRequest request) throws IOException{
			dao.delete(tid);
		return "redirect:/findAllRecord.action";
	}
	
	public static void main(String[] args) throws Exception {
		SpringApplication.run(TblRecordController.class, args);
	}

}
