package com.show.movie.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class TicketController {
	
//	private static final Logger logger = LoggerFactory.getLogger(TicketController.class);
	
	@RequestMapping(value="/getBranch",  produces = "application/json; charset=utf8")
	@ResponseBody
	public String ticketGetBranch(String movieLocation, Model model) {
//		String message = new String(message.getBytes("ISO-8859-1"), "UTF-8");
		log.info(model);
		String movieParam=movieLocation.split("\\(")[0];
		System.out.println("param[0]   "+  movieParam);
//		HashMap<String, Object> result= new HashMap<String, Object>();
//		result.put("status", "success");
//		result.put("location", "아아아가야가야");
		List<String> a = new ArrayList<String>();
		if(movieParam.equals("서울")) {
			a.add("강남구쇼미");
			a.add("강남구강말자");
			a.add("강남자");
		}else {
			a.add("경기장");
			a.add("경기일으킨");
			a.add("경기구");
		}
		
		
		
		return new Gson().toJson(a);
	}
	
}
