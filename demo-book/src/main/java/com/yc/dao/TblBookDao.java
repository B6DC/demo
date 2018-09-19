package com.yc.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;


import com.yc.bean.TblBook;

/**
 * TblBook
 * Integer
 * @author Administrator
 *
 */
	public interface TblBookDao extends JpaRepository<TblBook, Integer> {
		

		List<TblBook> findBybookType(String string);
		
	}

