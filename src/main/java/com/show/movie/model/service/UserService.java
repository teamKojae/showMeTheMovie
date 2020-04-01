package com.show.movie.model.service;

import java.util.List;

import com.show.movie.model.domain.Login;
import com.show.movie.model.domain.User;

public interface UserService {
	//재현
	public User getUser(String userId);
	public void insertNewUser(User user);
	public User isUser(String userId);

	//예나
	public void signUpUser(User user);

	//중훈
	public User loginM(Login login);
	public Login getLogin(String userId);
}