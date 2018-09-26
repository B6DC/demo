package com.yc.action;

import java.io.Writer;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yc.bean.TblBook;
import com.yc.bean.TblCart;
import com.yc.bean.TblOrders;
import com.yc.dao.TblBookDao;
import com.yc.dao.TblCartDao;
import com.yc.dao.TblOrdersDao;

@Controller
@EnableAutoConfiguration
public class TblIndexController {

	@Resource
	TblBookDao dao;
	@Resource
	TblCartDao dao1;
	@Resource
	TblOrdersDao dao2;

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
	@RequestMapping("/tbl_login.action")
	String tblLogin(){
		return "tbl_login";
	}

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





	//跳转页面
	@RequestMapping("/fuwu1.action")
	String fuwu1(Model m,HttpServletRequest request){		
		m.addAttribute("list", dao.findAll());			
		List<TblBook> book = dao.findBybookType("服务");		
		m.addAttribute("book", book);
		return "fuwu";		
	}

	//书城主页面-查询
	@RequestMapping("/fuwu.action")
	String fuwu(Model m,HttpServletRequest request){			

		m.addAttribute("list", dao.findAll());	
		//界面取值
		String bid = request.getParameter("bid");
		List<TblCart> book = dao1.findBybookId(bid);		
		m.addAttribute("book", book);

		return "gouwuche";		
	}

	//书城主页面-存储到购物车表
	@RequestMapping("/fuwu3.action")
	String fuwu3(String bbid,String bbne,String bbar,String bbpo,String bbpe,String brxe,String brpo,Model m,HttpServletRequest request){			

		//界面取值
		Integer aid = null;
		String ct = "未付款";
		Integer bbnr= 1;

		TblCart tblcart = new TblCart();
		tblcart.setAid(aid);
		tblcart.setBookId(bbid);
		tblcart.setBookName(bbne);
		tblcart.setBookAuthor(bbar);
		tblcart.setBookPhoto(bbpo);
		tblcart.setBookPrice(bbpe);
		tblcart.setReaderXame(brxe);
		tblcart.setReaderPhoto(brpo);
		tblcart.setBookNumber(bbnr);
		tblcart.setCartType(ct);
		dao1.save(tblcart);

		return "redirect:/fuwu1.action"; 	
	}

	//购买(付款)
	@RequestMapping("/goumai.action")
	String goumai(String qbd, Model m,HttpServletRequest request){	
		

		return "goumai";
	}

	//书城主页面-查询
	@RequestMapping("/fukuan.action")
	@Transactional
	String fukuan(String bqd,String qbd, Model m,HttpServletRequest request) throws InterruptedException{			



		System.out.println("y"+qbd);
		List<TblOrders> orders = dao2.findByBookId(qbd);

		System.out.println("z"+orders);
		m.addAttribute("book", orders);
		//界面取值
		//String bqd = request.getParameter("bqd");
		Integer qd1=Integer.parseInt(bqd);
		System.out.println("x"+qd1);

		dao1.delete(qd1);

		return  "goumai";
	}

	//书城主页面-存储到订单表
	@RequestMapping("/dizhi.action")
	String dizhi(String bbid,String bbne,String bbpo,String bbpe,String bbre,String brxe,String bbar, Model m,HttpServletRequest request){			

		//界面取值
		Integer oid = null;
		String ct = "已付款";
		Date bbde =new Date();
		Integer bbnr = 1;

		TblOrders tblorders = new TblOrders();
		tblorders.setOid(oid);
		tblorders.setBookId(bbid);
		tblorders.setBookName(bbne);
		tblorders.setBookPhoto(bbpo);
		tblorders.setBookPrice(bbpe);
		tblorders.setBuyDate(bbde);
		tblorders.setReaderXame(brxe);
		tblorders.setOrderAddres(bbar);
		tblorders.setCartType(ct);
		tblorders.setBookNumber(bbnr);
		dao2.save(tblorders);


		return "index_a";
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
