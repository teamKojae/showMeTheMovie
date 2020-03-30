package com.show.movie.model.domain;

import org.apache.ibatis.type.Alias;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Configuration
@Alias("movie")
@Getter @Setter @ToString
public class Movie {
	@Bean("movieVO")
	public Movie getMovie() {
		return new Movie();
	}
	private int movieCode;
	private String movieName;
	private String movieAudience;
	private String movieTicketRate;
	private String movieTicketRatePersent;
	private String movieTitle;
	private String movieSynopsis;
	private String moviePrice;
	private String moviePoster;
	private String moviePosterBG;
	private String movieImages;
	private String branchName;
	private int movieTime;
	@Autowired(required = false)
	private Manager manager; 
	
	
}
