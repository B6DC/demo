package com.yc.bean;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity //实体类注解
@Table(name="tbl_record") //配置表名
public class TblRecord {
	
	@Id //主键注解
	@GeneratedValue(strategy=GenerationType.AUTO)//配置主键值的生成机制
	private Integer tid;
	@Column()
	private String book_id;
	private String book_name;
	private String book_photo;
	private String reader_xame;
	private Date back_date;
	
	public Integer getTid() {
		return tid;
	}
	public void setTid(Integer tid) {
		this.tid = tid;
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
	public String getBook_photo() {
		return book_photo;
	}
	public void setBook_photo(String book_photo) {
		this.book_photo = book_photo;
	}
	public String getReader_xame() {
		return reader_xame;
	}
	public void setReader_xame(String reader_xame) {
		this.reader_xame = reader_xame;
	}
	public Date getBack_date() {
		return back_date;
	}
	public void setBack_date(Date back_date) {
		this.back_date = back_date;
	}
	
	
}
