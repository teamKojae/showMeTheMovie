package com.show.movie.model;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import lombok.Data;

@Configuration
@Data
public class Movie {
	@Bean("movieVO")
	public Movie movie() {
		return new Movie();
	}
	private String movieName;
	private String audience;
	private String ticketRate;
	private String ticketRatePersent;
	private String movieTitle;
	private String synopsis;
	
	
}
