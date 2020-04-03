package com.show.movie.model.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.show.movie.model.dao.ManagerDAO;
import com.show.movie.model.domain.Branch;
import com.show.movie.model.domain.Location;
import com.show.movie.model.domain.Movie;
import com.show.movie.model.domain.Theater;
import com.show.movie.model.service.ManagerService;

import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class ManagerServiceImpl implements ManagerService {

	@Autowired
	ManagerDAO managerDAO;
	
	@Override
	public void insertMovie(Movie movie) {
		String images[] = movie.getMovieImages().split(",");
		movie.setMoviePoster(images[0]);
		if( images.length > 1)
		movie.setMoviePosterBG(images[1]);
		managerDAO.insertMovie(movie);
	}

	@Override
	public HashMap<String, Object> getMovieList(String managerId) {
		HashMap<String, Object> data= new HashMap<String, Object>();
		data.put("movie", managerDAO.getMovieList(managerId));
		data.put("location",managerDAO.getLocationList());
		data.put("branch",managerDAO.getBranchList());
		return data;
	}

	@Override
	public List<Branch> getBranchList(Location location) {
		return managerDAO.getBranchList(location);
	}

	@Override
	public List<Theater> getTheaterList(String branchName) {
		return managerDAO.getTheaterList(branchName);
	}

}
