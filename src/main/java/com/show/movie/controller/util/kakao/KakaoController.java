package com.show.movie.controller.util.kakao;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class KakaoController {
	@Autowired
	private KakaoAPI kakaoAPI;
	
	@Autowired
	KakaoPay kakaoPay;
	
	@RequestMapping(value="/kakaoCallback")
	public String kakaoLogin(Model model, String code,  HttpSession session) {
		String access_Token =  kakaoAPI.getAccessToken(code);
		 HashMap<String, Object> userInfo = kakaoAPI.getUserInfo(access_Token);
		    System.out.println("login Controller : " + userInfo);
		    
		    //    클라이언트의 이메일이 존재할 때 세션에 해당 이메일과 토큰 등록
		    if (userInfo.get("email") != null) {
		        session.setAttribute("userId", userInfo.get("nickname"));
		        session.setAttribute("access_Token", access_Token);
		    }
		return "redirect:/";
	}
	@RequestMapping(value="/kakaoPaySuccess")
	public String kakaoPay(Model model, @RequestParam("pg_token") String pg_token, HttpSession session) {
		log.info("kakaoPaySuccess get............................................");
        log.info("kakaoPaySuccess pg_token : " + pg_token);
        
        model.addAttribute("info", kakaoPay.kakaoPayInfo(pg_token));
		
		return "index";
	}
	
	  @PostMapping("/kakaoPay")
	    public String kakaoPay() {
	        log.info("kakaoPay post............................................");
	        System.out.println("띠용///..."+kakaoPay.kakaoPayReady());
	        return "redirect:" + kakaoPay.kakaoPayReady();
	  }
	
	
	
}
