package com.yc.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.yc.bean.TblCart;
import com.yc.bean.TblOrders;


public interface TblOrdersDao extends JpaRepository<TblOrders, Integer> {

	List<TblOrders> findByBookId(String qbd);

	}

