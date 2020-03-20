package com.show.movie.model;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import lombok.Data;

@Data
@Configuration
public class Booking {
	private int bookingPrice;
	@Bean
	public Booking setBooking() {
		return new Booking();
	}
}
