package com.show.movie.model;

import org.apache.ibatis.type.Alias;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import lombok.Data;

@Data
@Configuration
@Alias("movieInfo")
public class MovieInfo {
	@Bean("getMovieInfoVO")
	public MovieInfo getMovieInfo() {
		return new MovieInfo();
	}
	@Autowired(required = false)
	private Movie movie;
	@Autowired(required = false)
	private Theater theater;
	@Autowired(required = false)
	private Branch branch;
	
	private int moiveCode;
	//Date는 다른사람이 구현하면 하자.. ㅠ ㅠ 
	//private Date movieDate;
	private String movieStartTime;
	private String movieEndTime;
}
