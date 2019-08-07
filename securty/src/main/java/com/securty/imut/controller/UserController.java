package com.securty.imut.controller;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.securty.imut.bean.User;
import com.securty.imut.service.UserService;

 
@Controller
public class UserController {
 
    @Autowired
    private UserService UserService;
    
    /**
     * 查找所有学生
     * @return
     */
    @RequestMapping(value="/list")
    @ResponseBody
    public List<User> list(){
        List<User> list = UserService.findAll();
        return list;
    }
    
    @RequestMapping(value="/add")
    @ResponseBody
    public int add(User User){
    	
        return UserService.addUser(User);
    }
    
    @RequestMapping(value="/update")
    @ResponseBody
    public int update(User User){
        return UserService.updateUserById(User);
    }
    
    @RequestMapping(value="/read")
    @ResponseBody
    public User read(User User){
        return UserService.selectUsersById(User);
    }
    
    @RequestMapping(value="/delete")
    @ResponseBody
    public int delete(Integer userId){
    	System.out.println("i came");
        return UserService.deleteUserById(userId);
    }
}