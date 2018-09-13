package com.yc.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity //实体类注解
@Table(name="tbl_orders") //配置表名
public class TblOrders {
	
	@Id //主键注解
	@GeneratedValue(strategy=GenerationType.AUTO)//配置主键值的生成机制
	private Integer oid;
	@Column()
	private String reader_xame;
	private String book_id;
	private String book_name;
	private String book_photo;
	private String buy_date;
	private String buy_addres;
	private Integer book_number;
	
	public Integer getOid() {
		return oid;
	}
	public void setOid(Integer oid) {
		this.oid = oid;
	}
	public String getReader_xame() {
		return reader_xame;
	}
	public void setReader_xame(String reader_xame) {
		this.reader_xame = reader_xame;
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
	public String getBuy_date() {
		return buy_date;
	}
	public void setBuy_date(String buy_date) {
		this.buy_date = buy_date;
	}
	public String getBuy_addres() {
		return buy_addres;
	}
	public void setBuy_addres(String buy_addres) {
		this.buy_addres = buy_addres;
	}
	public Integer getBook_number() {
		return book_number;
	}
	public void setBook_number(Integer book_number) {
		this.book_number = book_number;
	}
	
	
}
