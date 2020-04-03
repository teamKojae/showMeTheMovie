package com.show.movie.model.dao;

import java.util.List;

import com.show.movie.model.domain.Booking;
import com.show.movie.model.domain.Movie;
import com.show.movie.model.domain.MovieInfo;

public interface BookingDAO {
	
	List<Booking> getAllbooking(String userId);
}


