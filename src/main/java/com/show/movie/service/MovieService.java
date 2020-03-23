package com.show.movie.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.show.movie.model.Branch;
import com.show.movie.model.Movie;
import com.show.movie.model.MovieInfo;

public interface MovieService {
	public List<String> getBranch(String locationName);
	public Movie getMovie(String movieName);
	public List<MovieInfo> getMovieInfo(Movie movie, Branch branch) ;
}
