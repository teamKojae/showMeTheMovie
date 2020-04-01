package com.show.movie.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.show.movie.model.domain.User;
import com.show.movie.model.service.UserService;

@Controller
public class SignUpController {
	
	//내용 입력 회원가입 버튼 -> 입력받은 내용 컨트롤러에 전달 -> 처리(디비에 insert)->
	// 회원 가입 완료 알러트 창 -> 메인 페이지로 이동
	
	@Autowired
	UserService userService;
	
	@Autowired(required = false)
	User user;
	
	@RequestMapping(value = "/signUp.do", method = RequestMethod.POST)
	public String signUp(Model model, User user) {
		
		userService.signUpUser(user);
		model.addAttribute("user", user);
		
		System.out.println(user);
		
		System.out.println("회원가입 컨트롤러 왔다감");
		return "redirect:/";
	}
	
}
