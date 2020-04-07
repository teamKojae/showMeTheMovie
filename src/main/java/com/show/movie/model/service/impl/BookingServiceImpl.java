package com.show.movie.model.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.show.movie.model.dao.BookingDAO;
import com.show.movie.model.dao.CancellationDAO;
import com.show.movie.model.domain.Booking;
import com.show.movie.model.domain.Cancellation;
import com.show.movie.model.service.BookingService;

@Service("bookingService")
public class BookingServiceImpl implements BookingService {
	
	@Autowired 
	private BookingDAO bookingDAO;
	@Autowired 
	private CancellationDAO cancellationDAO;
	
	@Override
	public Map<String,Object> getMyPage(String userId) {
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("booking", bookingDAO.getAllbooking(userId));
		map.put("cancellationList", cancellationDAO.getAllcancellation(1));
		return map;
	}
	
	@Override
	public List<Booking> getAllBooking(String userId) {
		return bookingDAO.getAllbooking(userId);
	}
	@Override
	public List<Cancellation> getAllcancellation(int bookingState) {
		return cancellationDAO.getAllcancellation(bookingState);
	}

//	public void update(int bookingCode) {
//		cancellationDAO.update(bookingCode);
//	}

	@Override
	public void cancelDate(int bookingCode) {
		cancellationDAO.cancelDate(bookingCode);
		
	};
}
