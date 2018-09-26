package com.yc.action;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yc.bean.TblReader;
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
	@RequestMapping("/tbl-reader-add.action")
	String updatereader(){
		return "tbl-reader-add";
	}
	
	//显示用户信息(前台)
	/*@RequestMapping("/myinfo.action")
		String findmyinfo(Model m){
			return "myinfo";
		}*/

	@RequestMapping("/findmyinfo.action")
	String findmyinfo2(Model m,HttpServletRequest request){	
		String xame=request.getParameter("xame");
		System.out.println(xame);
		m.addAttribute("list", dao.findAll());
		List<TblReader> reader = dao.findByreaderXame(xame);
		System.out.println(reader);
		m.addAttribute("reader", reader);
		return "myinfo";
	}

	@Transactional
	@RequestMapping("/update4.action")
	String updateReader(HttpServletRequest request) throws InterruptedException {
		String readerxame = request.getParameter("xame");
		String readername = request.getParameter("name");
		String password = request.getParameter("password");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");  	
		String sex = request.getParameter("sex");  	
		String money= request.getParameter("money");
		System.out.println(readername);
		dao.updateOrder2(password, sex, readerxame, phone, email, readername);

		return "redirect:/index_a.action";  
	}

	@Transactional
	@RequestMapping("/update3.action")
	String updateOne(/*String name,String password,String phone,String email,String money,*/HttpServletRequest request) throws InterruptedException {
		String reader_name = request.getParameter("name");
		String password = request.getParameter("password");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");  	
		String money= request.getParameter("money");
		System.out.println(reader_name);
		dao.updateOrder(password,phone,email,money,reader_name);

		return "redirect:/findAllReader.action";  
	}



	public static void main(String[] args) throws Exception {
		SpringApplication.run(TblReaderController.class, args);
	}
}
