package com.show.movie.model.domain;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;


@Configuration
@Getter 
@Setter 
@ToString

public class Booking {
	private int bookingCode;
	private int bookingDate;
	private String bookingSeat;
	private int bookingPeople;
	private int bookingPrice;
	private int bookingState;
	//외래키는 써주지 않음
	
	/*
	 * @Bean("bookingVO") 
	 * public Booking getAllBooking()
	 *  { return new Booking(); 
	 * 어노테이션 때문에 썼다는데 모르겠음 
	 * }
	 */

}
