package com.yc.action;

import javax.annotation.Resource;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yc.dao.TblReaderDao;

@Controller
@EnableAutoConfiguration
public class TblReaderController {
	
	@Resource
	TblReaderDao dao;
	
	//显示用户信息(管理员)
	@RequestMapping("/findAllReader.action")
	String findAllReader(Model m){
		m.addAttribute("list", dao.findAll());
		return "tbl_reader";
	}
	
	//显示用户信息(前台)
		@RequestMapping("/myinfo.action")
		String findmyinfo(Model m){
			
			
			return "myinfo";
		}
	
	
	
	public static void main(String[] args) throws Exception {
		SpringApplication.run(TblReaderController.class, args);
	}
}
