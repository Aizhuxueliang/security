package com.securty.imut.dao;

import java.util.List;

import com.securty.imut.bean.User;

public interface UserDao {
	 public List<User> findAll();
	    
	    public int addUser(User User);
	    
	    public int updateUserById(User User);
	    
	    public User selectUsersById(User User);
	    
	    public int deleteUserById(Integer uid);
}
