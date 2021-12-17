package com.crud.book.conn;

import java.util.Date;

import org.springframework.stereotype.Component;

@Component
public class BoardVO {
	private int id;
	private String title;
	private String author;
	private String location;
	private Date date;
	private int status;
	private int total;
	private int lend;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public int getLend() {
		return lend;
	}
	public void setLend(int lend) {
		this.lend = lend;
	}
	
}
