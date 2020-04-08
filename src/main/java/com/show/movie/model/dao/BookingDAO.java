package com.show.movie.model.dao;

import java.util.List;

import com.show.movie.model.domain.Booking;
import com.show.movie.model.domain.Movie;
import com.show.movie.model.domain.MovieInfo;
import com.show.movie.model.domain.Seat;

public interface BookingDAO {
	List<Booking> getAllbooking(String userId);
    void update(int bookingCode) ;
    
    //정민
    public void insertBookingInfo(Booking booking);
    public void updateSeatStatus(Seat seat);
}


