package com.show.movie.model.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.show.movie.model.dao.UserDAO;
import com.show.movie.model.domain.User;
import com.show.movie.model.service.UserService;

import lombok.extern.log4j.Log4j;


@Service
@Log4j
public class UserServiceImpl implements UserService {
	@Autowired
	UserDAO userDAO;
	
	@Override
	public User getUser(String userId) {
		return userDAO.getUser(userId);
	}

	@Override
	public void insertNewUser(User user) {
		userDAO.insertNewUser(user);
	}

	@Override
	public User isUser(String userId) {
		return null;/*userDao.isUser(userId);*/
	}

	@Override
	public void signUpUser(User user) {
		userDAO.signUpUser(user);
	}




}
