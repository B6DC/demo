package com.yc.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.yc.bean.TblComment;

public interface TblCommentDao extends JpaRepository<TblComment, Integer> {

	List<TblComment> findByBookId(String bookId);

}

