package com.show.movie.model.domain;

import java.sql.Date;

import org.apache.ibatis.type.Alias;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import lombok.Builder;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;


@Configuration
@Alias("movieInfo")
@Getter @Setter @ToString
public class MovieInfo {
	@Bean("getMovieInfoVO")
	public MovieInfo getMovieInfo() {
		return new MovieInfo();
	}
	public MovieInfo() {}
	@Builder
	public MovieInfo(Movie movie, Theater theater, Branch branch) {
		this.movie = movie;
		this.theater = theater;
		this.branch = branch;
	}
	
	@Autowired(required = false)
	private Movie movie;
	@Autowired(required = false)
	private Theater theater;
	@Autowired(required = false)
	private Branch branch;
	
	private int moiveInfoCode;
	//Date는 다른사람이 구현하면 하자.. ㅠ ㅠ 
	private Date movieDate;
	private String movieStartTime;
	private String movieEndTime;
}
