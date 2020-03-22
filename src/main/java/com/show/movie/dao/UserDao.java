package com.show.movie.dao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import com.show.movie.model.User;


public interface UserDao {
	
	//select
	@Select("select * from user WHERE userId=#{userId}")
	public List<User> getUser(String userId);
	public User selectUser();
	
	
	// insert
	//고재현
	@Insert("INSERT INTO user(userId, userPassword, userName, userPhoneNumber, userBirth, userCode)\r\n" + 
			"VALUES ( #{userId}, #{userPassword},#{userName},\r\n" + 
			"		  #{userPhoneNumber}, #{userBirth}, #{userCode} )")
	public void insertNewUser(User user);
	
	@Select("SELECT * FROM user WHERE userId = #{userId} ")
	public User isUser(String userId);
	

	//update
	//delete
	
}
