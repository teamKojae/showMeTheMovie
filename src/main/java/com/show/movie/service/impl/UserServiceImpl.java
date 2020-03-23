package com.show.movie.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.show.movie.dao.UserDao;
import com.show.movie.model.User;
import com.show.movie.service.UserService;

import lombok.extern.log4j.Log4j;


@Service
@Log4j
public class UserServiceImpl implements UserService {
	@Autowired
	UserDao userDao;
	
	@Override
	public User getUser(String userId) {
		return userDao.getUser(userId);
	}
	
	/*
	 * @Override public User selectUser(String userId) { return
	 * userDao.getUser(userId); }
	 */

	@Override
	public void insertNewUser(User user) {
		userDao.insertNewUser(user);
	}

	@Override
	public User isUser(String userId) {
		return null;/*userDao.isUser(userId);*/
	}






}
