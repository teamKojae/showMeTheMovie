package com.show.movie.model.domain;

import org.apache.ibatis.type.Alias;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import lombok.Data;

@Data
@Configuration
@Alias("user") 
public class User {
	@Bean(name="userVO")
	public User getUser() {
		return new User();
	}
	private String userId;
	private String userPassword;
	private String userName;
	private String userPhoneNumber;
	private String userBirth;
	private int userCode;
}
