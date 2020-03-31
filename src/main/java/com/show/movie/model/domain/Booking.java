package com.show.movie.model.domain;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;


@Configuration
@Getter @Setter @ToString
public class Booking {
	private int bookingPrice;
	@Bean("bookingVO")
	public Booking getBooking() {
		return new Booking();
	}

}
