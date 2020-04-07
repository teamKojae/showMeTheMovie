package com.show.movie.model.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.show.movie.model.domain.Branch;
import com.show.movie.model.domain.Movie;
import com.show.movie.model.domain.MovieInfo;
import com.show.movie.model.domain.Seat;

public interface MovieDAO {
	//재현
	public List<String> getBranch(@Param("locationName")  String locationName);
	public List<MovieInfo> getMovieInfo(MovieInfo movieInfo);
	public Movie getMovie(String movieName);
	public String getMovieSynopsis(String movieName);
	public String getMovieImages(String movieName);
	public int isView();
	public void createViewGetMovieInfo();
	public List<Movie> getIndexMovie(); 
	
	
	
	
	//순위까지 가져오는 쿼리문
	@Select("SELECT movie.movieName, movie.movieAudience, movieRank.rank FROM movie movie, \r\n" + 
			"(SELECT movieCode, movieAudience, @curRank := @curRank + 1 AS 'rank' from movie, (select @curRank := 0 ) r ) movieRank\r\n" + 
			"where movie.movieCode = movieRank.movieCode;")
	public List<Movie> getMovieList();
		
	public List<Seat> getSeatList();
	
	
}
