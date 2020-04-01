package com.show.movie.model.dao;

import java.util.List;

import com.show.movie.model.domain.Branch;
import com.show.movie.model.domain.Location;
import com.show.movie.model.domain.Movie;

public interface ManagerDAO {
	//재현
	public void insertMovie(Movie movie);
	public List<Movie> getMovieList();
	public List<Location> getLocationList();
	public List<Branch> getBranchList();
	public List<Branch> getBranchList(Location location);
}
