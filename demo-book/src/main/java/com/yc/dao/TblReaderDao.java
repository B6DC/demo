package com.yc.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.yc.bean.TblReader;

public interface TblReaderDao {
	
	public interface TblManageDao extends JpaRepository<TblReader, Integer> {

	}
}
