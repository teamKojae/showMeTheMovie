package com.show.movie.model.service.impl;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.show.movie.model.dao.MovieDAO;
import com.show.movie.model.domain.Branch;
import com.show.movie.model.domain.Movie;
import com.show.movie.model.domain.MovieInfo;
import com.show.movie.model.domain.Seat;
import com.show.movie.model.service.MovieService;

import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class MovieServiceImpl implements MovieService {
	@Autowired
	MovieDAO movieDAO;
	
	
	@Override
	public List<String> getBranch(String locationName) {
		return movieDAO.getBranch(locationName);
	}

	@Override
	public Movie getMovie(String movieName) {
		return movieDAO.getMovie(movieName);
	}

	@Override
	public List<MovieInfo> getMovieInfo(MovieInfo movieInfo) {
		log.info("movieInfo : " );
		try {
			return movieDAO.getMovieInfo(movieInfo);
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public List<Seat> getSeatList(Seat seat) {
		log.info(movieDAO.getSeatList());
		return null;
	}

}
