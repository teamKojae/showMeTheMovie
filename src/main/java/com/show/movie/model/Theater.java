package com.show.movie.model;

import org.apache.ibatis.type.Alias;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import lombok.Data;

@Data
@Configuration
@Alias("theater")
public class Theater {
	@Bean("theaterVO")
	public Theater getTheater() {
		return new Theater();
	}
	
	private int theaterCode;
	private int theaterAllSeat;
	private int theaterLeftSeat;
}
