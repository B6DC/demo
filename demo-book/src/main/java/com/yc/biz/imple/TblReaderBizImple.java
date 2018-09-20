package com.yc.biz.imple;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.yc.bean.TblReader;
import com.yc.biz.TblReaderBiz;
import com.yc.dao.AccountDao;


@Service
public class TblReaderBizImple implements TblReaderBiz{
	@Resource
	private AccountDao accountDao;
	@Override
	public boolean login(String name, String pwd) {
		TblReader user =accountDao.findByReaderNameAndReaderPassword(name, pwd);
		if(user == null){
			System.out.println("登录失败");
			return false;
		}else {
			return true;	
		}
	}
	@Override
	public boolean register(TblReader tblReader) {
		String photo=null;
		TblReader user = accountDao.save(tblReader);

		if (user!=null) {
			System.out.println("注册成功"+user.getReaderName());
			return true;
		} else {
			System.out.println("注册失败"+user.getReaderName());
			return false;    		
		}	
	}

}
