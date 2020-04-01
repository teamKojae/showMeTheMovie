package com.show.movie.model.service;

import java.util.List;

import com.show.movie.model.domain.Login;
import com.show.movie.model.domain.User;

public interface UserService {
	public User getUser(String userId);

	/* public User selectUser(String userId); */
	public void insertNewUser(User user);
	public User isUser(String userId);

	public User loginM(Login login);
	public Login getLogin(String userId);
}