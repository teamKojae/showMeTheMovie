package com.show.movie.controller;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.show.movie.model.domain.MovieInfo;
import com.show.movie.model.service.ManagerService;
import com.show.movie.model.service.UserService;

import lombok.extern.log4j.Log4j;


/**
 * Handles requests for the application home page.
 */

@Log4j
@Controller
public class HomeController {

	
	@Autowired
	UserService userService;
	
	/*  ※   login은 LoginController에  있어요   */
	@RequestMapping(value="/")
	public String mainPage( Model model, HttpSession session) {
		return "index";
	}

	
	
	@RequestMapping(value="/myPage")
	public String ticketList(Model model) {
		return "myPage";
	}
	
	@RequestMapping(value="/signUp")
	public String sighUpPage(Model model) {
		return "signUp";
	}

}
