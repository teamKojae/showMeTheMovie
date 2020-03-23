package com.show.movie.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.show.movie.dao.MovieDao;
import com.show.movie.model.Branch;
import com.show.movie.model.Movie;
import com.show.movie.model.MovieInfo;
import com.show.movie.service.MovieService;

import lombok.extern.log4j.Log4j;

@Log4j
public class MovieServiceImpl implements MovieService {
	@Autowired
	MovieDao movieDao;
	
	@Override
	public List<String> getBranch(String locationName) {
		return movieDao.getBranch(locationName);
	}

	@Override
	public Movie getMovie(String movieName) {
		return movieDao.getMovie(movieName);
	}

	@Override
	public List<MovieInfo> getMovieInfo(Movie movie, Branch branch) {
		log.info(movieDao.getMovieInfo(movie,branch));
		return movieDao.getMovieInfo(movie,branch);
	}
}
