package com.yc.bean;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity //实体类注解
@Table(name="tbl_book") //配置表名
public class TblBook {
	
	@Id //主键注解
	@GeneratedValue(strategy=GenerationType.AUTO)//配置主键值的生成机制
	private Integer bid;
	@Column()
	private String book_id;
	private String book_name;
	private String book_type;
	private String book_author;
	private String book_pubname;
	private Date book_time;
	private String book_price;
	private Integer book_amount;
	private String book_photo;
	
	public Integer getBid() {
		return bid;
	}
	public void setBid(Integer bid) {
		this.bid = bid;
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
	public String getBook_type() {
		return book_type;
	}
	public void setBook_type(String book_type) {
		this.book_type = book_type;
	}
	public String getBook_author() {
		return book_author;
	}
	public void setBook_author(String book_author) {
		this.book_author = book_author;
	}
	public String getBook_pubname() {
		return book_pubname;
	}
	public void setBook_pubname(String book_pubname) {
		this.book_pubname = book_pubname;
	}
	public Date getBook_time() {
		return book_time;
	}
	public void setBook_time(Date book_time) {
		this.book_time = book_time;
	}
	public String getBook_price() {
		return book_price;
	}
	public void setBook_price(String book_price) {
		this.book_price = book_price;
	}
	public Integer getBook_amount() {
		return book_amount;
	}
	public void setBook_amount(Integer book_amount) {
		this.book_amount = book_amount;
	}
	public String getBook_photo() {
		return book_photo;
	}
	public void setBook_photo(String book_photo) {
		this.book_photo = book_photo;
	}
	
	
	
}
