package com.show.movie.model.service;

import java.util.List;
import java.util.Map;

import com.show.movie.model.domain.Booking;
import com.show.movie.model.domain.Cancellation;

public interface BookingService {
	public Map<String,Object> getMyPage(String userId);
	List<Booking> getAllBooking(String userId);
    List<Cancellation> getAllcancellation(int bookingState);
    void cancelDate(int bookingCode); 
  //  public void update(int bookingCode) ;
}
