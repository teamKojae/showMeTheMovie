package com.show.movie.model;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import lombok.Data;

@Data
@Configuration
public class User {
	@Bean(name="userVO")
	public User getUser() {
		return new User();
	}
	private String userId;
}
