package com.show.movie.controller;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.sql.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.google.gson.Gson;
import com.show.movie.controller.util.parse.Parser;
import com.show.movie.model.domain.Location;
import com.show.movie.model.domain.Movie;
import com.show.movie.model.service.ManagerService;

import lombok.extern.log4j.Log4j;


@Controller
@Log4j
public class ManagerController {
	
	//웹에서 넘어온 Date 형식의 데이터를 java.sql.Date 형식에 맞춰 데이터 바인딩
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
		return new Parser().fileParser(multipartHttpServletRequest);
	}
	
	@GetMapping("/addMovieInfo")
	public String addMovieInfo(Model model, HttpSession session) {
		session.setAttribute("manager", "ko");
		String managerId = (String)session.getAttribute("manager");
		model.addAttribute("data",managerService.getMovieList(managerId));
		return "addMovieInfo";
	}
	
	@GetMapping(value = "/getBranchList" ,  produces = "application/json; charset=utf8")
	@ResponseBody
	public String getBranchList(Model model,Location location) {
		
		return new Gson().toJson(managerService.getBranchList(location));
	}
	
	@GetMapping(value = "/getTheaterInAddMovie" , produces = "application/json; charset=utf8")
	@ResponseBody
	public String getTheaterInAddMovie(String branchName) {
		return new Gson().toJson(managerService.getTheaterList(branchName));
	}
	
	@PostMapping(value = "/getTheatersTimeTable" , produces = "application/json; charset=utf8")
	@ResponseBody
	public String getTheatersTimeTable(Model model, 
			@RequestParam List<String> theaterNo , Date timeSchedule ) {
		return new Gson().toJson(managerService.getTimeScheduleInTheater(theaterNo, timeSchedule));
	}
	

//	public String movieAddBranchAndTheater(@RequestBody Map<String, Object> map) {
//	public String movieAddBranchAndTheater(@RequestBody HashMap<String, Object> map) {
//	,
//	@RequestParam("theaterName") List<String> theaterName,
//	@RequestParam("movieStartTime") List<String> movieStartTime)
	
	@PostMapping(value="/movieAddBranchAndTheater",  produces = "application/json; charset=utf8")
	@ResponseBody
	public String movieAddBranchAndTheater(
			 @RequestParam String movieName,
			 @RequestParam List<String> branchName,
			 @RequestParam List<String> theaterName,
			 @RequestParam List<String> movieStartTime
			) {
		log.info(movieName);
		log.info(branchName);
		log.info(theaterName);
		log.info(movieStartTime);
		
		
		
		//managerService.insertTheater(movieName, theaterName);

	//	log.info(movieStartTime);
		

		return "addMovieInfo";
	}
	
	
	
//	@PostMapping(value="/movieAddBranchAndTheater",  produces = "application/json; charset=utf8")
//	@ResponseBody
//	public String movieAddBranchAndTheater(@RequestBody HashMap<String, Object> map) {
//		log.info(map);
//		log.info(map.get("theaterName"));
//		String aa = (String)map.get("theaterName");
//		String [] msg = (String[])map.get("theaterName");
//
//		log.info(aa);
//		log.info(msg);
//		//managerService.insertTheater(movieName, theaterName);
//		log.info(theaterName);
//		log.info(movieStartTime);
//		
//
//		return "addMovieInfo";
//	}
	
}









