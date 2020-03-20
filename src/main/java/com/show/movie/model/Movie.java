package com.show.movie.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import lombok.Data;

@Configuration
@Data
public class Movie {
	@Bean
	public Movie movieVO() {
		return new Movie();
	}
	private String movieName;
	private String audience;
	private String ticketRate;
	private String ticketRatePersent;
	private String movieTitle;
	private String synopsis;
	private String moviePrice;
	private String moviePoster;
	@Autowired(required = false)
	private Booking booking;
	
}
