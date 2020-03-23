package com.show.movie.service;

import java.util.List;

import com.show.movie.model.User;

public interface UserService {
	public User getUser(String userId);

	/* public User selectUser(String userId); */
	public void insertNewUser(User user);
	public User isUser(String userId);
	
	
}