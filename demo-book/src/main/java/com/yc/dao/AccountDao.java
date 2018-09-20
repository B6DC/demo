package com.yc.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.transaction.annotation.Transactional;

import com.yc.bean.TblReader;


public interface AccountDao  extends JpaRepository<TblReader, Integer>{

//	User  findByUnameAndPwd(String name, String pwd);

public TblReader findByReaderNameAndReaderPassword(String readerName,
		String readerPassword);
/*@Query(nativeQuery=true,value="select * from tbl_reader where reader_name=${reader_name} and reader_password=${reader_password}")
public TblReader find(String readerName,String readerPassword);
*/
@Transactional
@Modifying
@Query(nativeQuery=true,value="insert into tbl_reader"
		+ "(reader_name,reader_xame,reader_sex,reader_photo,reader_phone,reader_email,reader_money,reader_password)"
		+ " values(?1,?2,?3,?4,?5,?6,?7,?8)")
public int addReader(String name, String names, String sex, String photo,String phone,
		String email, String money, String pwd);


public TblReader findByReaderName(String name);
public TblReader findByReaderXame(String names);

/*@Query(nativeQuery=true,value="select * from tbl_reader where reader_name=? and reader_password=?")
public TblReader find(String readerName,String readerPassword);

*/
/*@Query(nativeQuery=true,value="select * from user where uname=? and pwd=?")
public User find(String Uname,String pwd);
*/
}

