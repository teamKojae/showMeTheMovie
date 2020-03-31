package com.show.movie.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.sql.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.show.movie.model.domain.Location;
import com.show.movie.model.domain.MovieInfo;
import com.show.movie.model.service.MovieService;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class TicketController {
	
	@InitBinder
    protected void initBinder(WebDataBinder binder){
        DateFormat  dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat,true));
    }

	
	@Autowired
	MovieService movieService;
	
	@RequestMapping(value="/getBranch",  produces = "application/json; charset=utf8")
	@ResponseBody
	public String ticketGetBranch(Location location, Model model) {
		return new Gson().toJson(
				movieService.getBranch(location.getLocationName().split("\\(")[0])
				);
	}
	
	@RequestMapping(value="/getMovieInfoAndTime",  produces = "application/json; charset=utf8")
	@ResponseBody
	public String getMovieInfoAndTime(Model model, MovieInfo movieInfo) {
		return new Gson().toJson(movieService.getMovieInfo(movieInfo));
	}

	@PostMapping("/getSelectScreen" )
	public String getSelectScreen(Model model, MovieInfo movieInfo) {
		return "screen";
	}
}
