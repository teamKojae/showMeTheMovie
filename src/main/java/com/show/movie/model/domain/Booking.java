package com.show.movie.model.domain;

import java.sql.Date;

import org.apache.ibatis.type.Alias;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Configuration
@Alias("booking")
@Getter
@Setter
@ToString
public class Booking {
	private int bookingCode;
	private Date bookingDate;
	private String bookingSeat;
	private int bookingPeople;
	private int bookingPrice;
	private int bookingState;
	
	private Movie movie;
	private MovieInfo movieInfo;
	private Branch branch;

}
