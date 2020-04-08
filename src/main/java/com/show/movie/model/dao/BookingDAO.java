package com.show.movie.model.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.show.movie.model.domain.Booking;
import com.show.movie.model.domain.Seat;

public interface BookingDAO {
	List<Booking> getAllbooking(String userId);
    void update(int bookingCode) ;
    
    // SEAT 테이블용 DAO .. (데이터넣기..)
    void insertSeat(@Param("movieInfoCode") int movieInfoCode, @Param("seatName") String seatName);
    int countTheater();
    
    
    //정민
    public void insertBookingInfo(Booking booking);
    public void updateSeatStatus(@Param("seatName") String seatName,@Param("movieInfoCode") int movieInfoCode);
}


