package com.show.movie.model.dao;

import java.util.List;

import com.show.movie.model.domain.Cancellation;

public interface CancellationDAO {
	List<Cancellation> getAllcancellation(int bookingState);
	//public int update(Cancellation cancellation);
	void cancelDate(int bookingCode); //update, insert는 보통 void로 받아준다 
}
