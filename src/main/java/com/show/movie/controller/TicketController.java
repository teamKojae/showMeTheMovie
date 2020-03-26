package com.show.movie.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.show.movie.model.domain.Branch;
import com.show.movie.model.domain.Location;
import com.show.movie.model.domain.Movie;
import com.show.movie.model.domain.MovieInfo;
import com.show.movie.model.service.MovieService;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class TicketController {
	
	@Autowired
	MovieService movieService;
	
	@RequestMapping(value="/getBranch",  produces = "application/json; charset=utf8")
	@ResponseBody
	public String ticketGetBranch(Location location, Model model) {
//		String message = new String(message.getBytes("ISO-8859-1"), "UTF-8");
		return new Gson().toJson(
				movieService.getBranch(location.getLocationName().split("\\(")[0])
				);
	}
	
	@RequestMapping(value="/getMovieInfoAndTime",  produces = "application/json; charset=utf8")
	@ResponseBody
	public String getMovieInfoAndTime(Model model, MovieInfo movieInfo, Movie movie) {
//		log.info("DB "+movieDao.getMovieInfo(movieInfo.getMovie().getMovieName(), movieInfo.getBranch().getBranchName()));
		return new Gson().toJson(movieService.getMovieInfo(movieInfo));
	}
//	
//	'movieDate' : dataArray[0],
//	'movieName' : dataArray[1],
//	'locationName' : dataArray[2],
//	'branchName' : dataArray[3]
	
	@PostMapping("/getSelectScreen" )
	public String getSelectScreen(Model model, MovieInfo movieInfo) {
//		log.info(movie.getMovieInfo());
//		movie.setMovieInfo(movieInfo);
//		model.addAttribute("movie",movie);
		
		return "screen";
	}
}
