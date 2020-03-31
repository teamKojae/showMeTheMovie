package com.show.movie.controller;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.google.gson.Gson;
import com.show.movie.controller.util.image.ImageParser;
import com.show.movie.model.domain.Location;
import com.show.movie.model.domain.Movie;
import com.show.movie.model.service.ManagerService;

import lombok.extern.log4j.Log4j;


@Controller
@Log4j
public class ManagerController {
	
	@InitBinder
    protected void initBinder(WebDataBinder binder){
        DateFormat  dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat,true));
    }

	
	@Autowired
	ManagerService managerService;
	
	@GetMapping("/addMovie")
	public void addMovie() {}
	
	@PostMapping("/insertMovie")
	public String insertMovie(Movie movie) {
		String[] movies = movie.getMovieImages().split(",");
		log.info("movie의 값은 뭐가왔을까요옹 ??  "+movie);
		for(String movieaa : movies) {
			log.info("영화 상세이미지  :  "+movieaa);
		}
		managerService.insertMovie(movie);
		return "redirect:/addMovie";
	}
	
	@RequestMapping(value = "/progress2")
	public String progress2(Model model) {
		return "progress2";
		
	}

	@RequestMapping(value = "/fileUpload" ,  produces = "application/json; charset=utf8")
	@ResponseBody
	public String fileUpload(MultipartHttpServletRequest multipartHttpServletRequest, Model model) throws IOException {
		return new ImageParser().fileParser(multipartHttpServletRequest);
	}
	
	@GetMapping("/addMovieInfo")
	public String addMovieInfo(Model model) {
		model.addAttribute("data",managerService.getMovieList());
		return "addMovieInfo";
	}
	
	@GetMapping(value = "/getBranchList" ,  produces = "application/json; charset=utf8")
	@ResponseBody
	public String getBranchList(Model model,Location location) {
		log.info("getBranchList : "+managerService.getBranchList(location));
		return new Gson().toJson(managerService.getBranchList(location));
	}
}

