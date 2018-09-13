package com.yc.bean;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity //实体类注解
@Table(name="tbl_comment") //配置表名
public class TblComment {
	
	@Id //主键注解
	@GeneratedValue(strategy=GenerationType.AUTO)//配置主键值的生成机制
	private Integer cid;
	@Column()
	private String book_id;
	private String book_name;
	private String book_author;
	private String reader_xame;
	private String book_content;
	private Date publishtime;
	
	public Integer getCid() {
		return cid;
	}
	public void setCid(Integer cid) {
		this.cid = cid;
	}
	public String getBook_id() {
		return book_id;
	}
	public void setBook_id(String book_id) {
		this.book_id = book_id;
	}
	public String getBook_name() {
		return book_name;
	}
	public void setBook_name(String book_name) {
		this.book_name = book_name;
	}
	public String getBook_author() {
		return book_author;
	}
	public void setBook_author(String book_author) {
		this.book_author = book_author;
	}
	public String getReader_xame() {
		return reader_xame;
	}
	public void setReader_xame(String reader_xame) {
		this.reader_xame = reader_xame;
	}
	public String getBook_content() {
		return book_content;
	}
	public void setBook_content(String book_content) {
		this.book_content = book_content;
	}
	public Date getPublishtime() {
		return publishtime;
	}
	public void setPublishtime(Date publishtime) {
		this.publishtime = publishtime;
	}
	
	
	
}
