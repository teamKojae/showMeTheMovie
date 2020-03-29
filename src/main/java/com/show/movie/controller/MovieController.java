package com.show.movie.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.show.movie.model.dao.MovieDAO;
import com.show.movie.model.domain.Movie;
import com.show.movie.model.service.MovieService;

import lombok.extern.java.Log;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class MovieController {
	@Autowired(required = false)
	Movie movie;
	@Autowired
	MovieService movieService;
	
	@RequestMapping(value="/movie")
	public String movie(Model model) {
		return "movie";
	}
	
	@GetMapping(value="/movieDetail")
	public String movieDetail(Model model, Movie movie) {
		model.addAttribute("movie",  movieService.getMovie(movie.getMovieName() ) );
		return "movieDetail";
	}
	
	@GetMapping("/ticketing")
	public String ticketing(Model model,Movie movie) {
		return "ticketing";
	}
	@RequestMapping(value="/screen")
	public String getScreen(Model model) {
		return "screen";
	}
	
}