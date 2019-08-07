package com.securty.imut.controller;



import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Timestamp;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.apache.log4j.helpers.LogLog;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.securty.imut.bean.Article;
import com.securty.imut.service.ArticleService;
import com.securty.imut.util.WangEditor;

 
@Controller
@RequestMapping(value="/article")
public class ArticleController {
 
    @Autowired
    private ArticleService articleService;
    
    /**
     * 查找所有
     * @return
     */
    @RequestMapping(value="/list")
    @ResponseBody
    public List<Article> list(){
        List<Article> list = articleService.findAll();
        return list;
    }
    
    /**
     * 查找
     * @return
     */
    @RequestMapping(value="/page")
    @ResponseBody
    public List<Article> page(HttpServletRequest request){
    	Article article = new Article();
    	Timestamp nowDate = new Timestamp(System.currentTimeMillis());
    	article.setNowDate(nowDate);
    	String pn = request.getParameter("pageNow") == null ? String.valueOf(1) : request.getParameter("pageNow");
    	int pageNow = Integer.parseInt(pn);
    	int pageSize = 5;
		int startRows = pageSize*(pageNow-1);
        List<Article> list = articleService.queryPage(startRows);
        return list;
    }
    
    /**
     * 查找
     * @return
     */
    @RequestMapping(value="/rows")
    @ResponseBody
    public int rows(HttpServletRequest request){
    	return articleService.getRowCount();
    }
    
    @RequestMapping(value="/add")
    @ResponseBody
    public int add(Article article){
        return articleService.addArticle(article);
    }
    
    @RequestMapping(value="/update")
    @ResponseBody
    public int update(Article article){
        return articleService.updateArticleById(article);
    }
    
    @RequestMapping(value="/read")
    @ResponseBody
    public Article read(Article article){
        return articleService.selectArticlesById(article);
    }
    
    @RequestMapping(value="/delete")
    @ResponseBody
    public int delete(Integer aid){
        return articleService.deleteArticleById(aid);
    }
    
    @RequestMapping(value = "/upload",method=RequestMethod.POST)
	@ResponseBody
	public WangEditor uploadFile(
			@RequestParam("myFile") MultipartFile multipartFile,
			HttpServletRequest request) {
 
		try {
			// 获取项目路径
			String realPath = request.getSession().getServletContext()
					.getRealPath("");
			InputStream inputStream = multipartFile.getInputStream();
			String contextPath = request.getContextPath();
			// 服务器根目录的路径
			String path = realPath.replace(contextPath.substring(1), "");
			// 根目录下新建文件夹upload，存放上传图片
			String uploadPath = path + "upload";
			// 获取文件名称
			String filename = multipartFile.getOriginalFilename();
			// 将文件上传的服务器根目录下的upload文件夹
			File file = new File(uploadPath, filename);
			FileUtils.copyInputStreamToFile(inputStream, file);
			// 返回图片访问路径
			String url = request.getScheme() + "://" + request.getServerName()
					+ ":" + request.getServerPort() + "/upload/" + filename;
			
			String [] str = {url};
			WangEditor we = new WangEditor(str);
			return we;
		} catch (IOException e) {
			LogLog.error("上传文件失败", e);
		}
		return null;
 
	}
}