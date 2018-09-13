package com.yc.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.yc.bean.TblComment;

public interface TblCommentDao {
	
	public interface TblManageDao extends JpaRepository<TblComment, Integer> {

	}
}
