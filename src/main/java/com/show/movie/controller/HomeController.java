package com.show.movie.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;


/**
 * Handles requests for the application home page.
 */

@Log4j
@Controller
public class HomeController {
	//private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value="/")
	public String mainPage( Model model) {
		log.info(getClass());
		
		return "index";
	}
	
	//  login은 LoginController에
	

	
	

	
	@RequestMapping(value="/myPage")
	public String ticketList(Model model) {
		return "myPage";
	}
	
	
	
	@RequestMapping(value="/signUp")
	public String sighUpPage(Model model) {
		return "signUp";
	}
	
	
	
}
