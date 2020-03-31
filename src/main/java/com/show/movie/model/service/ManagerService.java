package com.show.movie.model.service;

import java.util.HashMap;
import java.util.List;

import com.show.movie.model.domain.Branch;
import com.show.movie.model.domain.Location;
import com.show.movie.model.domain.Movie;

public interface ManagerService {
	public void insertMovie(Movie movie);
	public HashMap<String,Object> getMovieList();
	public List<Branch> getBranchList(Location location);
}
