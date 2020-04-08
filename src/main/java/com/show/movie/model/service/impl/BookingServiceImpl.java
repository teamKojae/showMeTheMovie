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
import com.show.movie.model.domain.Seat;
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
		map.put("cancellationList", cancellationDAO.getAllcancellation(userId));
		return map;
	}
	
	@Override
	public List<Booking> getAllBooking(String userId) {
		return bookingDAO.getAllbooking(userId);
	}
//	@Override
//	public List<Cancellation> getAllcancellation(int bookingState) {
//		return cancellationDAO.getAllcancellation(bookingState);
//	}

//	public void update(int bookingCode) {
//		cancellationDAO.update(bookingCode);
//	}

	@Override
	public void cancelDate(int bookingCode) {
		cancellationDAO.updateMovieSeat(bookingCode);
		cancellationDAO.cancelDate(bookingCode);
		
	}

	@Override
	public void insertBookingInfo(Booking booking) {
		try {
		System.out.println("booking   " + booking);
		bookingDAO.insertBookingInfo(booking);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void updateSeatStatus(String seatName, int movieInfoCode) {
		
		try {
			bookingDAO.updateSeatStatus(seatName, movieInfoCode);
			}
			catch(Exception e) {
				e.printStackTrace();
			}
	}

	@Override
	public void insertSeat() {
		
		String data[] = {"A","B","C","D","E","F","G","H","I","J"};
		
		for(int i = 1 ; i <= bookingDAO.countTheater(); i++) {
			for(int j = 0 ; j < 10; j++) {
				for(int z = 1; z <= 10; z++) {
					bookingDAO.insertSeat(i, (data[j]+Integer.toString(z))  );
				}
			}
		}
	}

}
