package com.show.movie.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.show.movie.dao.MovieDao;
import com.show.movie.model.Branch;
import com.show.movie.model.Location;
import com.show.movie.model.Movie;
import com.show.movie.model.MovieInfo;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class TicketController {
	
	@Autowired
	MovieDao movieDao;
	
	@RequestMapping(value="/getBranch",  produces = "application/json; charset=utf8")
	@ResponseBody
	public String ticketGetBranch(Location location, Model model) {
//		String message = new String(message.getBytes("ISO-8859-1"), "UTF-8");
		return new Gson().toJson(
				movieDao.getBranch(location.getLocationName().split("\\(")[0])
				);
	}
	
	@RequestMapping(value="/getMovieInfoAndTime",  produces = "application/json; charset=utf8")
	@ResponseBody
	public String getMovieInfoAndTime(Model model,  Movie movie, Branch branch) {
		log.info("movieNAme :   "+movie.getMovieName());
		log.info("BranchName :   "+branch.getBranchName());
//		log.info("DB "+movieDao.getMovieInfo(movieInfo.getMovie().getMovieName(), movieInfo.getBranch().getBranchName()));
		log.info("DB "+movieDao.getMovieInfo(movie , branch) );
		return new Gson().toJson(movieDao.getMovieInfo(movie , branch));
	}
	
	@PostMapping("/getSelectScreen" )
	public String getSelectScreen(Model model, Movie movie) {
		
		
//		log.info(movie.getMovieInfo());
//		movie.setMovieInfo(movieInfo);
//		model.addAttribute("movie",movie);
		
		return "screen";
	}
}
