package com.securty.imut.service;

import java.util.List;

import com.securty.imut.bean.User;

public interface UserService {
    public List<User> findAll();
    
    public int addUser(User User);
    
    public int updateUserById(User User);
    
    public User selectUsersById(User User);
    
    public int deleteUserById(Integer sid);
}
 