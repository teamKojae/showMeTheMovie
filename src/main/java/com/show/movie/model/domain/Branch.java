package com.show.movie.model.domain;

import org.apache.ibatis.type.Alias;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;


@Configuration
@Alias("branch")
@Getter @Setter @ToString
public class Branch {
	@Bean(name="branchVO")
	public Branch getBranch() {
		return new Branch();
	}
	private int branchCode;
	private String branchName;
	@Autowired(required = false)
	private Location location;
	@Autowired(required = false)
	private Movie movie;
}
