package com.show.movie.model.service.impl;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.show.movie.model.dao.MovieDao;
import com.show.movie.model.domain.Branch;
import com.show.movie.model.domain.Movie;
import com.show.movie.model.domain.MovieInfo;
import com.show.movie.model.service.MovieService;

import lombok.extern.log4j.Log4j;

@Log4j
@Service
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
	public List<MovieInfo> getMovieInfo(MovieInfo movieInfo) {
		log.info(movieDao.getMovieInfo(movieInfo));
		return movieDao.getMovieInfo(movieInfo);
	}
}
