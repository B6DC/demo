package com.yc.action;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.server.PathParam;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mysql.fabric.xmlrpc.base.Data;
import com.yc.bean.TblBook;
import com.yc.bean.TblComment;
import com.yc.bean.TblReader;
import com.yc.dao.AccountDao;
import com.yc.dao.TblBookDao;
import com.yc.dao.TblCommentDao;


@Controller
@EnableAutoConfiguration
//@RequestMapping("/WEB-INF/jsp")
public class TblCommentController {
	
	@Resource
	TblCommentDao dao;
	@Resource
	AccountDao accountDao;
	@Resource
	TblBookDao tblBookDao;
	@RequestMapping("/findAllComment.action")
	String findAll(Model m){
		m.addAttribute("list", dao.findAll());
		return "tbl_comment";
	}
	//书的详情
	@RequestMapping("single.action")
	 public String single(String bookId,Model model,HttpSession session){
		TblBook book=tblBookDao.findByBookId(bookId);
		List<TblComment> com=dao.findByBookId(bookId);
        session.setAttribute("bookId", bookId);
		model.addAttribute("book", book);
        model.addAttribute("conment", com);
		System.out.println(bookId+"!!!!!");
        System.out.println(book);
	  
	    return  "single";	
	}
	//添加评论
	@RequestMapping(value="/addContent.do")
	@ResponseBody
	public List<TblComment> add(String pl,HttpServletRequest request,HttpSession session,Model model){
	TblComment tblComment= new TblComment();
	System.out.println(pl+"??");
	 String  bookId=	(String) session.getAttribute("bookId");
	 //当前登录用户名auser
	 String  auser=	(String) session.getAttribute("dqname");

	 System.out.println(auser+"当前登录用户");
		 if (auser==null) {
			System.out.println("当前未登录");
		}else {			
		}
	 TblReader user=accountDao.findByReaderName(auser);
	 String readerPhoto=user.getReaderPhoto();
	 String readerXname=user.getReaderXame();
	 TblBook book=tblBookDao.findByBookId(bookId); 
	 String bookName=book.getBookName();
	 String bookPhoto=book.getBookPhoto();
	 tblComment.setBookId(bookId);
	 tblComment.setBookName(bookName);
	 tblComment.setBookPhoto(bookPhoto);
	 tblComment.setReaderPhoto(readerPhoto);
   	  tblComment.setReaderXame(readerXname);//
   	 tblComment.setBookContent(pl);
   	 tblComment.setPublishtime(new Date());
   	 System.out.println(tblComment.getReaderXame()+"necheng");
   	dao.save(tblComment);
	List<TblComment> com=dao.findByBookId(bookId);
	System.out.println(com+"com");
	 return com;
	}
	
   public static void main(String[] args) throws Exception {
		SpringApplication.run(TblCommentController.class, args);
	}
}
