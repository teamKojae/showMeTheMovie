package com.show.movie.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.show.movie.model.dao.BookingDAO;
import com.show.movie.model.domain.Booking;
import com.show.movie.model.domain.Cancellation;

import lombok.extern.log4j.Log4j;



public interface BookingService {
	public Map<String,Object> getMyPage(String userId);
	List<Booking> getAllBooking(String userId);
    List<Cancellation> getAllcancellation(int bookingState);
    void cancelDate(int bookingCode); 
  //  public void update(int bookingCode) ;
    
   
    
    //정민
    public void insertBookingInfo(Booking booking);
}
