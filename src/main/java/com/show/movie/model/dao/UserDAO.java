package com.show.movie.model.dao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Component;

import com.show.movie.model.domain.User;

public interface UserDAO {
	//재현
	public User getUser(String userId);
	public User selectUser();
	public void insertNewUser(User user);
	public String getTime();

	
	
}
