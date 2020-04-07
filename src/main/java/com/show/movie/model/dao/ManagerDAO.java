package com.show.movie.model.dao;

import java.util.List;

import com.show.movie.model.domain.Branch;
import com.show.movie.model.domain.Location;
import com.show.movie.model.domain.Movie;
import com.show.movie.model.domain.Theater;

public interface ManagerDAO {
	//재현
	public void insertMovie(Movie movie);
	public List<Movie> getMovieList(String managerId);
	public List<Location> getLocationList();
	public List<Branch> getBranchList();
	public List<Branch> getBranchList(Location location);
	public List<Theater> getTheaterList(String branchName);
}
