package com.yc.action;

import javax.annotation.Resource;

import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yc.dao.TblCommentDao;



@Controller
@EnableAutoConfiguration
public class TblCommentController {
	
	@Resource
	TblCommentDao dao;
	
	@RequestMapping("/findAllComment.action")
	String findAll(Model m){
		m.addAttribute("list", dao.findAll());
		return "tbl_comment";
	}
}
