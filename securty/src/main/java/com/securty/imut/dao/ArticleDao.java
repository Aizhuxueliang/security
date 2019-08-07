package com.securty.imut.dao;

import java.util.List;

import com.securty.imut.bean.Article;

public interface ArticleDao {
	    public List<Article> findAll();
	    
	    public int addArticle(Article article);
	    
	    public int updateArticleById(Article article);
	    
	    public Article selectArticlesById(Article article);
	    
	    public int deleteArticleById(Integer aid);
	    
	    public List<Article> queryPage(Integer startRows);
	    
	    public int getRowCount();
}
