package com.yc.biz;

import com.yc.bean.TblReader;



public interface TblReaderBiz {
	public boolean login(String name,String pwd);
	public boolean register(TblReader tReader);
}
