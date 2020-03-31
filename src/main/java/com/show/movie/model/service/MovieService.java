package com.show.movie.model.service;

import java.util.List;

import com.show.movie.model.domain.Movie;
import com.show.movie.model.domain.MovieInfo;
import com.show.movie.model.domain.Seat;

public interface MovieService {
	public List<String> getBranch(String locationName);
	public Movie getMovie(String movieName);
	public List<MovieInfo> getMovieInfo(MovieInfo movieInfo) ;
	public List<Seat> getSeatList(Seat seat);

}
