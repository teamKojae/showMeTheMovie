package com.show.movie;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value="/")
	public String mainPage(Model model) {
		return "index";
	}
	
	@RequestMapping(value="/login")
	public String login(Model model) {
		return "login";
	}
	
	@RequestMapping(value="/movie")
	public String movie(Model model) {
		return "movie";
	}
	
	
	@RequestMapping(value="/movieDetail")
	public String movieDetail(Model model) {
		return "movieDetail";
	}
	
	@RequestMapping(value="/ticketList")
	public String ticketList(Model model) {
		return "ticketList";
	}
	
	@RequestMapping(value="/ticketing")
	public String ticketing(Model model) {
		return "ticketing";
	}
	
	@RequestMapping(value="/signUp")
	public String signUp(Model model) {
		return "signUp";
	}
	
}
