package com.yc.action;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yc.bean.TblBook;
import com.yc.dao.TblBookDao;

@Controller
@EnableAutoConfiguration
public class TblIndexController {

	@Resource
	TblBookDao dao;

	//书城主页面(用户没登陆特价书籍)
	@RequestMapping("/index")
	String index(Model m){
		m.addAttribute("list", dao.findAll());
		List<TblBook> book = dao.findBybookType("手机");
		List<TblBook> book1 = dao.findBybookType("文学");
		m.addAttribute("book", book);
		m.addAttribute("book1", book1);
		return "index";
	}


	//书城主页面(用户已登录特价书籍)
	@RequestMapping("/index_a")
	String index_a(Model m){
		m.addAttribute("list", dao.findAll());
		List<TblBook> book = dao.findBybookType("手机");
		List<TblBook> book1 = dao.findBybookType("文学");
		m.addAttribute("book", book);
		m.addAttribute("book1", book1);
		return "index_a";
	}

	//购物车
	@RequestMapping("/gouwuche.action")
	String gouwuche(Model m){

		return "gouwuche";
	}

	//购买(付款)
	@RequestMapping("/goumai.action")
	String goumai(Model m){

		return "goumai";
	}

	//后台主页面(管理员)
	@RequestMapping("/book.action")
	String tblindex(){
		return "tbl_index";
	}

	//添加图书(管理员)
	@RequestMapping("/tbl_book_add.action")
	String tblbookadd(){
		return "tbl_book_add";
	}

	//万能页面
	@RequestMapping("/tbl_codeing.action")
	String tblCodeing(){
		return "tbl_codeing";
	}

	//管理员登录页面
	@RequestMapping("/tbl_login")
	String tblLogin(){
		return "tbl_login";
	}

	//书城主页面-手机
	@RequestMapping("/shouji.action")
	String shouji(Model m){
		m.addAttribute("list", dao.findAll());
		List<TblBook> book = dao.findBybookType("手机");
		m.addAttribute("book", book);
		return "shouji";		
	}

	//书城主页面-汽车
	@RequestMapping("/qiche.action")
	String qiche(Model m){
		m.addAttribute("list", dao.findAll());
		List<TblBook> book = dao.findBybookType("汽车");
		m.addAttribute("book", book);
		return "qiche";		
	}

	//书城主页面-电器
	@RequestMapping("/dianqi.action")
	String dianqi(Model m){			
		m.addAttribute("list", dao.findAll());			
		List<TblBook> book = dao.findBybookType("电器");		
		m.addAttribute("book", book);
		return "dianqi";		
	}

	//书城主页面-自行车
	@RequestMapping("/zixingche.action")
	String zixingche(Model m){			
		m.addAttribute("list", dao.findAll());			
		List<TblBook> book = dao.findBybookType("自行车");		
		m.addAttribute("book", book);
		return "zixingche";		
	}

	//书城主页面-家具
	@RequestMapping("/jiaju.action")
	String jiaju(Model m){			
		m.addAttribute("list", dao.findAll());			
		List<TblBook> book = dao.findBybookType("家具");		
		m.addAttribute("book", book);
		return "jiaju";		
	}

	//书城主页面-宠物
	@RequestMapping("/chongwu.action")
	String chongwu(Model m){			
		m.addAttribute("list", dao.findAll());			
		List<TblBook> book = dao.findBybookType("宠物");		
		m.addAttribute("book", book);
		return "chongwu";		
	}

	//书城主页面-文学
	@RequestMapping("/wenxue.action")
	String wenxue(Model m){			
		m.addAttribute("list", dao.findAll());			
		List<TblBook> book = dao.findBybookType("文学");		
		m.addAttribute("book", book);
		return "wenxue";		
	}

	//书城主页面-时尚
	@RequestMapping("/shishang.action")
	String shishang(Model m){			
		m.addAttribute("list", dao.findAll());			
		List<TblBook> book = dao.findBybookType("时尚");		
		m.addAttribute("book", book);
		return "shishang";		
	}

	//书城主页面-游戏
	@RequestMapping("/youxi.action")
	String youxi(Model m){			
		m.addAttribute("list", dao.findAll());			
		List<TblBook> book = dao.findBybookType("游戏");		
		m.addAttribute("book", book);
		return "youxi";		
	}

	//书城主页面-服务
	@RequestMapping("/fuwu.action")
	String fuwu(Model m){			
		m.addAttribute("list", dao.findAll());			
		List<TblBook> book = dao.findBybookType("服务");		
		m.addAttribute("book", book);
		return "fuwu";		
	}

	//书城主页面-职场
	@RequestMapping("/zhichang.action")
	String zhichang(Model m){			
		m.addAttribute("list", dao.findAll());			
		List<TblBook> book = dao.findBybookType("职场");		
		m.addAttribute("book", book);
		return "zhichang";		
	}

	//书城主页面-房地产
	@RequestMapping("/fangdichan.action")
	String fangdichan(Model m){			
		m.addAttribute("list", dao.findAll());			
		List<TblBook> book = dao.findBybookType("房地产");		
		m.addAttribute("book", book);
		return "fangdichan";		
	}

	public static void main(String[] args) throws Exception {
		SpringApplication.run(TblIndexController.class, args);
	}
}
