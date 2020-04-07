package com.show.movie.model.service;

import java.util.List;

import com.show.movie.model.domain.Branch;
import com.show.movie.model.domain.Location;
import com.show.movie.model.domain.Movie;
import com.show.movie.model.domain.MovieInfo;
import com.show.movie.model.domain.Seat;

public interface MovieService {
	//재현
	public List<String> getBranch(String locationName);
	public Movie getMovie(String movieName);
	public List<MovieInfo> getMovieInfo(MovieInfo movieInfo) ;
	public String getMovieImages(String movieName);
	public String getMovieSynopsis(String movieName);
	public List<Seat> getSeatList(Seat seat);
	public List<Movie> getIndexMovie(Movie movie);
}
