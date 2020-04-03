package com.show.movie.model.service;

import java.util.List;

import com.show.movie.model.domain.Booking;
import com.show.movie.model.domain.Movie;
import com.show.movie.model.domain.MovieInfo;

public interface BookingService {
	
	List<Booking> getAllBooking(String userId);
	/*
	 * List<MovieInfo> getAllMovieinfo(); 
	 * List<Movie> getAllmovieName();
	 */

	

}
