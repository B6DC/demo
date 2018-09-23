package com.yc.action;

import java.io.File;
import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.yc.bean.TblReader;
import com.yc.biz.TblReaderBiz;
import com.yc.dao.AccountDao;
import com.yc.dao.TblBookDao;
import com.yc.util.SimpleSendMail;

@Controller
@EnableAutoConfiguration
public class TblReaderControllers {

	@Resource
	TblReaderBiz tblReaderBiz;
	@Resource
	AccountDao accountDao;

	@RequestMapping("logins.do")
	String logins() {
		return "login";
	}

	// 登录
	@RequestMapping("login.do")
	public String login(String name, String pwd, HttpSession session, Model med) {

		if (tblReaderBiz.login(name, pwd)) {
			TblReader auser = accountDao.findByReaderName(name);
			session.setAttribute("auser", auser);
			System.out.println(auser.getReaderName());
			System.out.println(auser.getReaderPhoto());
			return "redirect:/index_a";
		}
		med.addAttribute("error", "用户名或密码输入错误!!!");
		return "login";

	}

	@RequestMapping("register.do")
	String register() {
		return "register";
	}

	// 注册
	@RequestMapping("newregister.do")
	public String newregister(String name, String names, String sex, String phone, String email, String money,
			String pwd, String pwds, @RequestParam(value = "file") MultipartFile file, Model model,
			HttpServletRequest request) {
		TblReader tReader = new TblReader();
		tReader.setReaderName(name);
		tReader.setReaderXame(names);
		tReader.setReaderSex(sex);
		tReader.setReaderPhone(phone);
		tReader.setReaderEmail(email);
		tReader.setReaderMoney(money);
		tReader.setReaderPassword(pwd);
		TblReader user = accountDao.findByReaderName(name);
		TblReader user1 = accountDao.findByReaderXame(names);
		if (user != null || user1 != null) {
			model.addAttribute("errors", "该账号或昵称已经被注册！！！");
			return "register";
		}
		if (file.isEmpty()) {
			System.out.println("文件为空");
		}
		if (file.isEmpty()) {
			String fileName = null;
			tReader.setReaderPhoto(fileName);
			tblReaderBiz.register(tReader);
			System.out.println(tReader.getReaderPhoto());
			return "login";
		}
		String path = request.getSession().getServletContext().getRealPath("/image");
		String fileName = file.getOriginalFilename();
		// 创建了一个File对象,名字是filepath,路径是path,名字是fileName。
		File filepath = new File(path, fileName);
		if (!filepath.getParentFile().exists()) {
			filepath.getParentFile().mkdirs();
		}
		try {
			file.transferTo(filepath);
		} catch (IOException e) {
			e.printStackTrace();
		}
		tReader.setReaderPhoto("image/" + fileName);
		tblReaderBiz.register(tReader);
		System.out.println(tReader.getReaderPhoto());
		return "login";
	}

	@RequestMapping("/forgetx.do")
	String forgetx() {
		return "forget";
	}
	
	
	@RequestMapping("forget.do")
	/**
	 * 忘记密码
	 * @param request
	 * @param response
	 * @throws IOException
	 * @throws ServletException
	 */
	private String forget(String name, String email, Model model, HttpSession session) {
		// 看输入的用户名和邮箱匹配不匹配
		TblReader user = accountDao.findByReaderNameAndReaderEmail(name, email);
		if (user != null) {
			String subject = "找回密码";// 邮件主题
			String recipient = email;// 邮箱
			// 存用户名
			session.setAttribute("yzname", name);
			session.setAttribute("yzemail", email);
           // System.out.println(name.get);
			SimpleSendMail s = new SimpleSendMail();
			String content = s.random();
			// 存邮箱发送的验证码
			session.setAttribute("content", content);
			s.send(subject, content, recipient);
			return "forget";
		} else {
			model.addAttribute("msg", "用户名和和注册时的邮箱不匹配,请重新输入");
			return "forget";
		}
	}

	// 验证邮箱验证码
	@RequestMapping("forgets.do")
	public String forgets(String code, HttpSession session, Model model) {
		String content = (String) session.getAttribute("user");
		// session.getAttribute("name")
		if (code.equals(content)) {
			return "forgets";
		}
		model.addAttribute("msgs", "输入的验证码错误");
		return "forgets";
	}
	// 修改密码

	@RequestMapping("forgetss.do")
	public String forgetss(String pwd, HttpSession session, Model model) {

		String name = (String) session.getAttribute("yzname");
		System.out.println("name"+name);
		TblReader tr = accountDao.findByReaderName(name);

		int s= tr.getReaderId();
		int i = accountDao.updatePwds(pwd,s);
		if (i > 0) {
			System.out.println("pwd"+pwd);
			return "login";
		}
		return "forgets";
	}

	public static void main(String[] args) throws Exception {
		SpringApplication.run(TblReaderControllers.class, args);
	}
}
