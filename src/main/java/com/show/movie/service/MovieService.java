package com.show.movie.service;

import java.util.List;

import com.show.movie.model.Movie;
import com.show.movie.model.MovieInfo;

public interface MovieService {
	public List<String> getBranch(String locationName);
	public Movie getMovie(String movieName);
	public List<MovieInfo> getMovieInfo(MovieInfo movieInfo) ;
}
