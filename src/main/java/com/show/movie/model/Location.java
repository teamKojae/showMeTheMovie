package com.show.movie.model;

import org.apache.ibatis.type.Alias;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import lombok.Data;

@Data
@Configuration
@Alias("location")
public class Location {
	@Bean(name="locationVO")
	public Location getLocation() {
		return new Location();
	}
	private int locationCode;
	private String locationName;
}
