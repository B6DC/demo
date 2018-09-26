package com.yc.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.transaction.annotation.Transactional;

import com.yc.bean.TblCart;

	public interface TblCartDao extends JpaRepository<TblCart, Integer> {

		List<TblCart> findBybookId(String bid);
		
		
		/*@Query(value = "delete from tbl_cart where book_id = ?1", nativeQuery = true)
		@Transactional
		@Modifying
		TblCart delete(String bookId);*/

	}	
