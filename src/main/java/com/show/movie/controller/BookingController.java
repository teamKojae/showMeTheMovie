package com.show.movie.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.show.movie.model.service.BookingService;

@Controller
public class BookingController {

	@Autowired
	private BookingService bookingService;

	@RequestMapping(value = "/booking", method = RequestMethod.GET)
	public String getEmpCount(Model model) {
		model.addAttribute("bookingList", bookingService.getAllBooking("jeongmin"));
		System.out.println(bookingService.getAllBooking("jeongmin"));
		return "myPage";
	}
}
