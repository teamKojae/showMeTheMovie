package com.show.movie.model.service.impl;

import java.sql.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
		try {
			if(movieDAO.isView() == 0) {
				movieDAO.createViewGetMovieInfo();
			}
			return movieDAO.getMovieInfo(movieInfo);
		}catch(Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public String getMovieImages(String movieName) {
		return movieDAO.getMovieImages(movieName);
	}

	@Override
	public String getMovieSynopsis(String movieName) {
		return movieDAO.getMovieSynopsis(movieName);
	}
	
	@Override
	public List<Seat> getSeatList(Seat seat) {
		//log.info(movieDAO.getSeatList());
		return movieDAO.getSeatList();
	}

	@Override
<<<<<<< HEAD
	public List<Movie> moviePageList(Movie movie) {
		return movieDAO.moviePageList();
	}

=======
	public List<Movie> getIndexMovie(Movie movie) {
		return movieDAO.getIndexMovie();
	}
	public Map<String, Object> getMovieAllList(String movieDate) {
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("movieList", movieDAO.getMovieAllList());
		map.put("movie",movieDAO.getNotRegisMovie(movieDate));
		return map;
	}
>>>>>>> 771dbfffa20ffc7c3bc0483547bc95228d51b831

}
