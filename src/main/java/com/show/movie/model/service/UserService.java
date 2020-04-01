package com.show.movie.model.service;

import java.util.List;

import com.show.movie.model.dao.UserDAO;
import com.show.movie.model.domain.Login;
import com.show.movie.model.domain.User;

public interface UserService {
	//재현
	public User getUser(String userId);
	public void insertNewUser(User user);
	public User isUser(String userId);

	public Login getLogin(Login login);
	
	public Login encrypt(Login login);
	//String encrypted = UserDAO.encrypt(userPassword);
}