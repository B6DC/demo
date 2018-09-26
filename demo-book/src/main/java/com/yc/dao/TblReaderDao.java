package com.yc.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.transaction.annotation.Transactional;

import com.yc.bean.TblReader;


	
public interface TblReaderDao extends JpaRepository<TblReader, Integer> {

	@Query(value = "update  tbl_reader  set  reader_password=?1 ,reader_phone=?2 ,reader_email=?3 ,reader_money=?4 where reader_name=?5 ", nativeQuery = true)
	@Transactional
	@Modifying
	void updateOrder(String reader_password, String reader_phone,String reader_email,String reader_money,String reader_name);

	List<TblReader> findByreaderXame(String xame);
	
	
	@Query(value = "update  tbl_reader  set  reader_password=?1 ,reader_sex=?2,reader_xame=?3,reader_phone=?4 ,reader_email=?5 where reader_name=?6 ", nativeQuery = true)
	@Transactional
	@Modifying
	void updateOrder2(String reader_password, String reader_sex,String reader_xame,String reader_phone,String reader_email,String reader_name);
	
	
	}

