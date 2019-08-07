package com.securty.imut.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.securty.imut.bean.User;
import com.securty.imut.dao.UserDao;
import com.securty.imut.service.UserService;
 

 
@Service
public class UserServiceImpl implements UserService {
 
    @Autowired
    private UserDao UserDao;
    
    public List<User> findAll() {
        // TODO Auto-generated method stub
        return UserDao.findAll();
    }
 
	@Override
	public int addUser(User User) {
		// TODO Auto-generated method stub
		return UserDao.addUser(User);
	}
 
	@Override
	public int updateUserById(User User) {
		return UserDao.updateUserById(User);
	}
 
	@Override
	public User selectUsersById(User User) {
		// TODO Auto-generated method stub
		return UserDao.selectUsersById(User);
	}
 
	@Override
	public int deleteUserById(Integer uid) {
		// TODO Auto-generated method stub
		return UserDao.deleteUserById(uid);
	}
    
}
 