package com.yc.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.transaction.annotation.Transactional;

import com.yc.bean.TblBook;

/**
 * TblBook
 * Integer
 * @author Administrator
 *
 */
	public interface TblBookDao extends JpaRepository<TblBook, Integer> {
		

		List<TblBook> findBybookType(String string);
		List<TblBook> findBybookId(String bid);
		
		@Query(value = "update tbl_book set book_type=?1,book_pubname=?2,book_price=?3,book_amount=?4 where book_name=?5 ", nativeQuery = true)
		@Transactional
		@Modifying
		void updateOrder(String book_type, String book_pubname, String book_price,
				Integer book_amount, String book_name);

		
		
	}

