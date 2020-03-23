package com.show.movie.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.show.movie.model.Branch;
import com.show.movie.model.Movie;
import com.show.movie.model.MovieInfo;

public interface MovieDao {
	/*
	 * @Select("SELECT branch.branchName FROM branch, location " +
	 * "WHERE location.locationCode = branch.locationCode "+
	 * "AND location.locationName= #{locationName} ")
	 */
	public List<String> getBranch(@Param("locationName")  String locationName);
	
	
	/*
	 * @Select("SELECT movie.movieName as 'movie.movieName'  FROM theater, movieInfo, movie , branch "
	 * + "WHERE theater.theaterCode = movieinfo.theaterCode " +
	 * "AND movieinfo.movieCode = movie.movieCode " +
	 * "AND theater.branchCode = branch.branchCode " +
	 * "AND movie.movieName = #{movie.movieName} " +
	 * "AND branch.branchName=  #{branch.branchName} ")
	 */
//	public List<MovieInfo> getMovieInfo(@Param("movie") Movie movie, @Param("branch") Branch branch);
	public List<MovieInfo> getMovieInfo(MovieInfo movieInfo);
	/* @Select("SELECT * FROM movie WHERE movieName = #{movieName}") */
	public Movie getMovie(String movieName);
	
	//순위까지 가져오는 쿼리문
	@Select("SELECT movie.movieName, movie.movieAudience, movieRank.rank FROM movie movie, \r\n" + 
			"(SELECT movieCode, movieAudience, @curRank := @curRank + 1 AS 'rank' from movie, (select @curRank := 0 ) r ) movieRank\r\n" + 
			"where movie.movieCode = movieRank.movieCode;")
	public List<Movie> getMovieList();
	
	
}
