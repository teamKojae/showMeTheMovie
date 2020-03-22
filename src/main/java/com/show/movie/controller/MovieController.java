package com.show.movie.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.show.movie.dao.MovieDao;
import com.show.movie.model.Movie;

import lombok.extern.java.Log;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class MovieController {
	@Autowired(required = false)
	Movie movie;
	@Autowired
	MovieDao movieDao;
	
	@RequestMapping(value="/movie")
	public String movie(Model model) {
		log.info(getClass());
		return "movie";
	}
//	@RequestMapping(value="/payment")
//	public String payment(Model model) {
//		return "index";
//	}
	
	@GetMapping(value="/movieDetail")
	public String movieDetail(Model model, Movie movie) {
		model.addAttribute("movie",  movieDao.getMovie(movie.getMovieName() ) );
		return "movieDetail";
	}
	
	@GetMapping("/ticketing")
	public String ticketing(Model model,Movie movie) {
		//model.addAttribute("movie",movie);
		System.out.println(movie);
		return "ticketing";
	}
	@RequestMapping(value="/screen")
	public String getScreen(Model model) {
		return "screen";
	}
	
}