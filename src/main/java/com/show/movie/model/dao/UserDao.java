package com.show.movie.model.dao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Component;

import com.show.movie.model.domain.User;

public interface UserDao {
	
	
	//select
	/* @Select("select * from user WHERE userId=#{userId}") */ 
	public User getUser(String userId);
	public User selectUser();
	public void insertNewUser(User user);
	
	public String getTime();
	
	// insert
	//고재현
	/*@Insert("INSERT INTO user(userId, userPassword, userName, userPhoneNumber, userBirth, userCode)\r\n" + 
			"VALUES ( #{userId}, #{userPassword},#{userName},\r\n" + 
			"		  #{userPhoneNumber}, #{userBirth}, #{userCode} )")*/
	
	
	/*
	 * @Select("SELECT * FROM user WHERE userId = #{userId} ") public User
	 * isUser(String userId);
	 */
	

	//update
	//delete
	
}
