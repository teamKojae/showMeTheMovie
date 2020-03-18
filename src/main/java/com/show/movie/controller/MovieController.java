package com.show.movie.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.show.movie.model.Movie;

import lombok.extern.java.Log;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class MovieController {
	//private static final Logger logger = LoggerFactory.getLogger(MovieController.class);
	@Autowired
	Movie movie;
	
	
	
	
	@RequestMapping(value="/movie")
	public String movie(Model model) {
		log.info(getClass());
		return "movie";
	}
	
	@RequestMapping(value="/movieDetail")
	public String movieDetail(Model model) {
		movie.setMovieName("Dark Waters");
		movie.setTicketRate("1");
		movie.setTicketRatePersent("10.9");
		movie.setAudience("67612");
		movie.setMovieTitle("인류의 99는 이미 중독되었다.");
		movie.setSynopsis("젖소 190마리의 떼죽음<br>메스꺼움과 고열에 시달리는 사람들<br>젖소 190마리의 떼죽음<br>메스꺼움과 고열에 시달리는 사람들<br>");
		model.addAttribute("movie",movie);
		
		return "movieDetail";
	}
	
	@GetMapping("/ticketing")
	public String ticketing(Model model,Movie movie) {
		System.out.println(movie);
		return "ticketing";
	}
	
	
}