package com.show.movie.controller;

import java.io.IOException;
import java.sql.Date;
import java.sql.Time;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.LocalTime;
import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
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
import com.google.gson.GsonBuilder;
import com.show.movie.controller.util.parse.Parser;
import com.show.movie.model.domain.Location;
import com.show.movie.model.domain.Movie;
import com.show.movie.model.domain.MovieInfo;
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
			@RequestParam List<String> theaterNo , String timeSchedule ) {
		
		List<List<MovieInfo>> list = managerService.getTimeScheduleInTheater(theaterNo, timeSchedule);
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
		
		try {
			for(List<MovieInfo> mo : list) {
				
				int afterTime = 0;
				int calcTime = 0;
				for(int i = 0 ; i < mo.size(); i++) {
					String[] beforeParse = null;
					int beforeTime = 0;
					
					String[] afterParse = mo.get(i).getMovieStartTime().split(":");
					afterTime = ( Integer.parseInt(afterParse[0]) * 60 ) + Integer.parseInt(afterParse[1]);
					
					if(i != 0 ) {
					beforeParse = mo.get(i-1).getMovieEndTime().split(":");
					beforeTime = ( Integer.parseInt(beforeParse[0]) * 60 ) + Integer.parseInt(beforeParse[1]);
					}else {
						beforeTime = afterTime;
					}

					calcTime = afterTime - beforeTime;
					
					int movieTime = mo.get(i).getMovie().getMovieTime();
					System.out.println("-------------------------------------------------------");
					
					System.out.println("앞 시간    :  " +afterTime );
					System.out.println("전 시간    :  " +beforeTime );
					System.out.println("계산한 시간    :  " +calcTime );
					System.out.println("영화 시간    :  "+movieTime);
					System.out.println("지금 상영 시작 시간 :   " +mo.get(i).getMovieStartTime());
					System.out.println("지금 상영 끝 시간 :   " +mo.get(i).getMovieEndTime());
					System.out.println("-------------------------------------------------------");
					int addMovieCount = calcTime / movieTime;
					if( ( addMovieCount > 0  ) ){
						
						System.out.println(" 영화 등록가능 갯수  "+addMovieCount);
						System.out.println(" 영화 등록할 수 있는 시간은  "+ (10+beforeTime));
						String hour = String.format("%02d", ( (beforeTime+10) / 60 ) );
						String min = String.format("%02d", ( (beforeTime+10) % 60 ) ); 
						System.out.println(" 영화 등록 가능 시간  "+  hour+":"+min);
					}
					List<MovieInfo> emptyAddMovie = new ArrayList<MovieInfo>(); 
					if(i == mo.size()-1 ) {
						System.out.println("=====================================================");
						System.out.println("영화 등록 시간 ~~ 24시 이전   "+ mo.get(i).getMovieEndTime() );
						String[] parse = mo.get(i).getMovieEndTime().split(":");
						int last = ( Integer.parseInt(parse[0]) * 60 ) + Integer.parseInt(parse[1]);
						System.out.println("last 시간"+last);
						int getLast = 1500 - last;
						int getLastMovie = getLast / movieTime;
						System.out.println("영화 끝 ~ 24시까지 몇개 등록할 수 있나여  : "+ getLastMovie);
						for(int j = 0 ; j < getLastMovie; j++) {
							if( j == 0 ) {
								last += 10;
							}else {
							last += movieTime;
							}
							String hour = String.format("%02d", ( (last+10) / 60 ) );
							String min = String.format("%02d", ( (last+10) % 60 ) ); 
							String endHour = String.format("%02d", ( (last+10+movieTime) / 60 ) );
							String endMin = String.format("%02d", ( (last+10+movieTime) / 60 ) );
							String startTime = hour+":"+min;
							String endTime = endHour+":"+endMin;
							System.out.println(" 영화 등록 가능 시작 시간  "+  hour+":"+min);
							System.out.println(" 영화 등록 가능  끝 시간  "+  endHour+":"+endMin);
							MovieInfo movieInfo = getMovieInfo();
							movieInfo.setMovieStartTime(startTime);
							movieInfo.setMovieEndTime(endTime);
							emptyAddMovie.add(movieInfo);
						}
					}
				}
			}
		}catch(IndexOutOfBoundsException e) {
			e.printStackTrace();
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return gson.toJson(list);
	}
	@Qualifier("getMovieInfoVO")
	public MovieInfo getMovieInfo() {
		return new MovieInfo();
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









