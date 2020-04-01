package com.show.movie.model.domain;

import java.sql.Date;

import org.apache.ibatis.type.Alias;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import lombok.Builder;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Configuration
@Alias("movieInfo")
@Getter @Setter
@ToString

public class MovieInfo { 
	// get "DAO" and method return
	@Bean("getMovieInfoVO")
	public MovieInfo getMovieInfo() {
		return new MovieInfo();
	}

	public MovieInfo() {//show 'I will use this method' 
	}

	@Builder //What this method means? 
	
	public MovieInfo(Movie movie, Theater theater, Branch branch) {
		this.movie = movie;
		this.theater = theater;
		this.branch = branch;   //Declaration 
	
	}

	@Autowired(required = false) //what "require=false' means? studied before this so lets check my notes 
	private Movie movie;
	@Autowired(required = false)
	private Theater theater;
	@Autowired(required = false)
	private Branch branch;

	private int moiveInfoCode;
	private String movieStartTime; 
	private Date movieDate;

	private String movieEndTime;
	public MovieInfo(Movie movie, Theater theater, Branch branch, int moiveInfoCode, Date movieDate,
			String movieStartTime, String movieEndTime) {
		super();
		this.movie = movie;
		this.theater = theater;
		this.branch = branch;
		this.moiveInfoCode = moiveInfoCode;
		this.movieDate = movieDate;
		this.movieStartTime = movieStartTime;
		this.movieEndTime = movieEndTime;
	}
	
	
	
}
