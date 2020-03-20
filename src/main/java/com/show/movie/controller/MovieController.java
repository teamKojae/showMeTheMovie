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
	@Autowired(required = false)
	Movie movie;

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
		if(movie.getMovieName().equals("darkWater")){
			movie.setMovieName("Dark Waters");
			movie.setTicketRate("1");
			movie.setTicketRatePersent("10.9");
			movie.setAudience("67612");
			movie.setMovieTitle("인류의 99는 이미 중독되었다.");
			movie.setMoviePoster("https://img.megabox.co.kr/SharedImg/2020/02/21/lczdtI1vz3Dd1ShuXb0iXj8pTJGbh4wa_420.jpg");
			movie.setSynopsis("젖소 190마리의 떼죽음<br>메스꺼움과 고열에 시달리는 사람들<br>젖소 190마리의 떼죽음<br>메스꺼움과 고열에 시달리는 사람들<br>"
					+ "젖소 190마리의 떼죽음<br>메스꺼움과 고열에 시달리는 사람들<br>젖소 190마리의 떼죽음<br>메스꺼움과 고열에 시달리는 사람들<br>"
					+ "젖소 190마리의 떼죽음<br>메스꺼움과 고열에 시달리는 사람들<br>젖소 190마리의 떼죽음<br>메스꺼움과 고열에 시달리는 사람들<br>");
		}else if(movie.getMovieName().equals("시원찮은 그녀를 위한 육성방법 피날레")) {
			movie.setMovieName("시원찮은 그녀를 위한 육성방법 피날레");
			movie.setTicketRate("2");
			movie.setTicketRatePersent("10.2");
			movie.setAudience("63287");
			movie.setMovieTitle("씹덕오덕하악");
			movie.setSynopsis("아오이라ㅓㅇㄹ");
			movie.setMoviePoster("https://img.megabox.co.kr/SharedImg/2020/02/07/jO2LnVNFJxLzAL62WxHjDUBKbtPcV8ET_420.jpg");
		}
		model.addAttribute("movie",movie);
		
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