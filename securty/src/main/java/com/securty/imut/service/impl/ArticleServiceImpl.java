package com.securty.imut.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.securty.imut.bean.Article;
import com.securty.imut.dao.ArticleDao;
import com.securty.imut.service.ArticleService;
 

 
@Service
public class ArticleServiceImpl implements ArticleService {
 
    @Autowired
    private ArticleDao articleDao;
    
    public List<Article> findAll() {
        // TODO Auto-generated method stub
        return articleDao.findAll();
    }
 
	@Override
	public int addArticle(Article article) {
		// TODO Auto-generated method stub
		return articleDao.addArticle(article);
	}
 
	@Override
	public int updateArticleById(Article article) {
		return articleDao.updateArticleById(article);
	}
 
	@Override
	public Article selectArticlesById(Article article) {
		// TODO Auto-generated method stub
		return articleDao.selectArticlesById(article);
	}
 
	@Override
	public int deleteArticleById(Integer aid) {
		// TODO Auto-generated method stub
		return articleDao.deleteArticleById(aid);
	}

	@Override
	public List<Article> queryPage(Integer startRows) {
		// TODO Auto-generated method stub
		return articleDao.queryPage(startRows);
	}

	@Override
	public int getRowCount() {
		// TODO Auto-generated method stub
		return articleDao.getRowCount();
	}
    
}
 