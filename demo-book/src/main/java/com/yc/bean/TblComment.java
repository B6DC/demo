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
	private String readerPhoto;
	private String readerXame;
	private String bookId;
	private String bookPhoto;
	private String bookName;
	private String bookAuthor;
	private String bookContent;
	private Date publishtime;
	
	public Integer getCid() {
		return cid;
	}
	public void setCid(Integer cid) {
		this.cid = cid;
	}
	public String getReaderPhoto() {
		return readerPhoto;
	}
	public void setReaderPhoto(String readerPhoto) {
		this.readerPhoto = readerPhoto;
	}
	public String getReaderXame() {
		return readerXame;
	}
	public void setReaderXame(String readerXame) {
		this.readerXame = readerXame;
	}
	public String getBookId() {
		return bookId;
	}
	public void setBookId(String bookId) {
		this.bookId = bookId;
	}
	public String getBookPhoto() {
		return bookPhoto;
	}
	public void setBookPhoto(String bookPhoto) {
		this.bookPhoto = bookPhoto;
	}
	public String getBookName() {
		return bookName;
	}
	public void setBookName(String bookName) {
		this.bookName = bookName;
	}
	public String getBookAuthor() {
		return bookAuthor;
	}
	public void setBookAuthor(String bookAuthor) {
		this.bookAuthor = bookAuthor;
	}
	public String getBookContent() {
		return bookContent;
	}
	public void setBookContent(String bookContent) {
		this.bookContent = bookContent;
	}
	public Date getPublishtime() {
		return publishtime;
	}
	public void setPublishtime(Date publishtime) {
		this.publishtime = publishtime;
	}
	

}
