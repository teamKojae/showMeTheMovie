package com.show.movie.model.domain;

import org.apache.ibatis.type.Alias;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import lombok.Builder;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Configuration
@Alias("seat")
@Getter @Setter @ToString
public class Seat {
	
	@Bean("getSeatVO")
	public Seat getSeat(Seat seat) {
		return new Seat();
	}
	
	public Seat() {};
	
	@Builder
	public Seat(MovieInfo movieInfo, Movie movie, Theater theater, Branch branch) {
		this.movie = movie;
		this.theater = theater;
		this.branch = branch;
		this.movieInfo = movieInfo;
	}
	
	@Autowired(required = false)
	private MovieInfo movieInfo;
	@Autowired(required = false)
	private Movie movie;
	@Autowired(required = false)
	private Theater theater;
	@Autowired(required = false)
	private Branch branch;
	
	private int seatCode;
	private int movieInfoCode;
	private String seatName;
	private int seatStatus;

	
}
