package com.securty.imut.bean;

import java.sql.Timestamp;

import com.fasterxml.jackson.annotation.JsonFormat;

public class Article {
	private int articleId;
	private String articleTitle;
	private String articleSummary;
	private String articleDetail;
	private Timestamp nowDate;
	private User user;
	public Article() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Article(int articleId, String articleTitle, String articleSummary, String articleDetail, Timestamp nowDate,
			User user) {
		super();
		this.articleId = articleId;
		this.articleTitle = articleTitle;
		this.articleSummary = articleSummary;
		this.articleDetail = articleDetail;
		this.nowDate = nowDate;
		this.user = user;
	}
	public int getArticleId() {
		return articleId;
	}
	public void setArticleId(int articleId) {
		this.articleId = articleId;
	}
	public String getArticleTitle() {
		return articleTitle;
	}
	public void setArticleTitle(String articleTitle) {
		this.articleTitle = articleTitle;
	}
	public String getArticleSummary() {
		return articleSummary;
	}
	public void setArticleSummary(String articleSummary) {
		this.articleSummary = articleSummary;
	}
	public String getArticleDetail() {
		return articleDetail;
	}
	public void setArticleDetail(String articleDetail) {
		this.articleDetail = articleDetail;
	}
	@JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")  
	public Timestamp getNowDate() {
		return nowDate;
	}
	public void setNowDate(Timestamp nowDate) {
		this.nowDate = nowDate;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	
}
