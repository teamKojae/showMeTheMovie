package com.show.movie.model.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.show.movie.model.dao.BookingDAO;
import com.show.movie.model.domain.Booking;
import com.show.movie.model.domain.Movie;
import com.show.movie.model.domain.MovieInfo;
import com.show.movie.model.service.BookingService;

@Service("bookingService") 
public class BookingServiceImpl implements  BookingService{

	@Autowired
	 private  BookingDAO bookingDAO;

	@Override
	public List<Booking> allgetBooking() {
		return bookingDAO.getAllbooking();
	}

	@Override
	public List<MovieInfo> getAllMovieinfo() {
		// TODO Auto-generated method stub
		return bookingDAO.getAllMovieinfo();
	}

	@Override
	public List<Movie> getAllmovieName() {
		// TODO Auto-generated method stub
		return bookingDAO.getAllmovieName();
	}
}
