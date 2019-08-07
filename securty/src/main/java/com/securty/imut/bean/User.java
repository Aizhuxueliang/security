package com.securty.imut.bean;

import java.util.List;

public class User {
	
	private Integer userId;
	private String userName;
	private String userPass;
	private List<Article> articles;
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public User(String userName, String userPass) {
		super();
		this.userName = userName;
		this.userPass = userPass;
	}

	public User(Integer userId, String userName, String userPass, List<Article> articles) {
		super();
		this.userId = userId;
		this.userName = userName;
		this.userPass = userPass;
		this.articles = articles;
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserPass() {
		return userPass;
	}
	public void setUserPass(String userPass) {
		this.userPass = userPass;
	}
	public List<Article> getArticles() {
		return articles;
	}
	public void setArticles(List<Article> articles) {
		this.articles = articles;
	}
	
}
