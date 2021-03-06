package com.yc.action;

import java.io.File;
import java.io.IOException;
import java.io.Writer;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.yc.bean.TblBook;
import com.yc.dao.TblBookDao;


@Controller
@EnableAutoConfiguration
public class TblBookController {

	@Resource
	TblBookDao dao;

	//查询所有图书(管理员)
	@RequestMapping("/findAllBook.action")
	String findAllbook(Model m){
		m.addAttribute("list", dao.findAll());	
		return "tbl_book";
	}
	
	//修改图书信息
	@RequestMapping("/update.action")
	String updatebook(){
		return "update";
	}

	//删除所有
	@RequestMapping("/deleteBook.action")
	String deletebook(Integer bid,Writer out,HttpServletResponse response,HttpServletRequest request) throws IOException{
		dao.delete(bid);
		return "redirect:/findAllBook.action";
	}
	
	//添加图书
	@RequestMapping("/addBook.action")
	String register(  @RequestParam(value="file")MultipartFile file, Model model,HttpServletRequest request) throws ParseException{

		if (file.isEmpty()) {
			System.out.println("文件为空");
		}
		
		String path = request.getSession().getServletContext().getRealPath("/image");

		String fileName = file.getOriginalFilename();

		File filepath = new File(path, fileName);

		if (!filepath.getParentFile().exists()) {
			filepath.getParentFile().mkdirs();
		}try {
			file.transferTo(filepath);
		} catch (IOException e) {
			e.printStackTrace();
		}

		model.addAttribute("fileName", filepath);
		
		//界面取值
		String book_id = request.getParameter("book_id");
		String book_name = request.getParameter("book_name");
		String book_type = request.getParameter("book_type");
		String book_author = request.getParameter("book_author");
		String book_pubname = request.getParameter("book_pubname");
		//数据类型转换
		java.text.SimpleDateFormat formatter = new SimpleDateFormat( "yyyy-MM-dd");
		String book_time2 = request.getParameter("book_time");
		Date book_time =formatter.parse(book_time2);
		String book_price = request.getParameter("book_price");       
		String book_amount2= request.getParameter("book_amount");
		Integer book_amount=Integer.parseInt(book_amount2);
		Integer bid = null;

		//实例化
		TblBook tbook = new TblBook();
		tbook.setBid(bid);
		tbook.setBookId(book_id);
		tbook.setBookName(book_name);
		tbook.setBookType(book_type);
		tbook.setBookAuthor(book_author);
		tbook.setBookPubname(book_pubname);
		tbook.setBookTime(book_time);
		tbook.setBookPrice(book_price);
		tbook.setBookAmount(book_amount);
		String end="image/"+filepath.getName();
		tbook.setBookPhoto(end);
		//SQL增加
		dao.save(tbook);

		return "redirect:/findAllBook.action"; 
	}

	//更新
	@Transactional
	@RequestMapping("/update2.action")
	String updateOne(HttpServletRequest request) throws InterruptedException {
		String book_name = request.getParameter("name");
		String book_type = request.getParameter("type");
		String book_pubname = request.getParameter("pubname");
		String book_price = request.getParameter("price");  	
		String book_amount2= request.getParameter("amount");
		Integer book_amount=Integer.parseInt(book_amount2);
		
		dao.updateOrder(book_type,book_pubname,book_price,book_amount,book_name);
		
		return "redirect:/findAllBook.action";  
	}



	public static void main(String[] args) throws Exception {
		SpringApplication.run(TblBookController.class, args);
	}
}
