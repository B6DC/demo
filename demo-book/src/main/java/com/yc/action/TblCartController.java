package com.yc.action;

import javax.annotation.Resource;

import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.stereotype.Controller;

import com.yc.dao.TblCartDao;

@Controller
@EnableAutoConfiguration
public class TblCartController {

	@Resource
	TblCartDao dao;

}
