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
		List<String> list = new ArrayList<String>();
		if(movieParam.equals("서울")) {
			list.add("강남구쇼미");
			list.add("강남구강말자");
			list.add("강남자");
		}else if(movieParam.equals("경기")){
			list.add("경기장");
			list.add("경기일으킨");
			list.add("경기구");
		}else if(movieParam.equals("강원")){
			list.add("강원쟝");
			list.add("강원장님");
			list.add("강원유치원");
		}else if(movieParam.equals("제주")){
			list.add("제주한라봉");
			list.add("천혜향");
			list.add("제주황색");
		}else {
			list.add("디비만들자");
			list.add("영화관이닷");
			list.add("ajax시렁");
		}
		return new Gson().toJson(list);
	}
	
	@RequestMapping(value="/getMovieInfoAndTime",  produces = "application/json; charset=utf8")
	@ResponseBody
	public String getMovieInfoAndTime(String theater, Model model) {
		List<HashMap<String, Object>> list = new ArrayList<HashMap<String, Object>>();
		HashMap<String, Object> result = new HashMap<String, Object>();
		if(theater.equals("강남구쇼미")) {
		result.put("movieTimeStart", "12:10");
		result.put("movieTimeEnd", "14:27");
		result.put("movieName", "다크 워터스");
		result.put("theater", "강남");
		result.put("resideSeat", "117");
		result.put("allSeat", "232");
		}else {
			result.put("movieTimeStart", "16:40");
			result.put("movieTimeEnd", "18:37");
			result.put("movieName", "시원찮은 그녀를 위한 육성방법 피날레");
			result.put("theater", "강남");
			result.put("resideSeat", "14");
			result.put("allSeat", "180");
		}
		list.add(result);
		
		return new Gson().toJson(list);
	}
	
}
