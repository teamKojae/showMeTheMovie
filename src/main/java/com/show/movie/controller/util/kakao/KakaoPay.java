package com.show.movie.controller.util.kakao;

import java.net.URI;
import java.net.URISyntaxException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Service;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestClientException;
import org.springframework.web.client.RestTemplate;

import com.show.movie.controller.util.kakao.VO.KakaoPayReadyVO;
import com.show.movie.controller.util.kakao.VO.kakaoPayApprovalVO;

import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class KakaoPay {
	 private static final String HOST = "https://kapi.kakao.com";
	    
	 	@Autowired
	    private KakaoPayReadyVO kakaoPayReadyVO;
	    private kakaoPayApprovalVO kakaoPayApprovalVO;
	    
	    public String kakaoPayReady() {
	 
	        RestTemplate restTemplate = new RestTemplate();
	 
	        // 서버로 요청할 Header
	        HttpHeaders headers = new HttpHeaders();
	        headers.add("Authorization", "KakaoAK " + "5b50c16bc9b2c25a434fa19f62c330f9");
	        headers.add("Accept", MediaType.APPLICATION_JSON_UTF8_VALUE);
	        headers.add("Content-Type", MediaType.APPLICATION_FORM_URLENCODED_VALUE + ";charset=UTF-8");
	        
	        
	        // 서버로 요청할 Body

	        MultiValueMap<String, String> params = new LinkedMultiValueMap<String, String>();
	        params.add("cid", "TC0ONETIME");
	        params.add("partner_order_id", "1");
	        params.add("partner_user_id", "kojae");
	        params.add("item_name", "galaxy");
	        params.add("quantity", "2");
	        params.add("total_amount", "100");
	        params.add("tax_free_amount", "50");
	        params.add("approval_url", "http://localhost:5000/kakaoPaySuccess");
	        params.add("cancel_url", "http://localhost:5000/kakaoPayCancel");
	        params.add("fail_url", "http://localhost:5000/kakaoPaySuccessFail");
	        HttpEntity<MultiValueMap<String, String>> body = 
	        		 new HttpEntity<MultiValueMap<String, String>>(params, headers);
	         System.out.println(body);
	        try {
	        	System.out.println("ee");
	            kakaoPayReadyVO = restTemplate.postForObject(new URI("https://kapi.kakao.com/v1/payment/ready"), body, KakaoPayReadyVO.class);
	            System.out.println("dd");
	            log.info("" + kakaoPayReadyVO);
	           
	            return kakaoPayReadyVO.getNext_redirect_pc_url();
	 
	        } catch (RestClientException e) {
	        	System.out.println("restExc");
	            e.printStackTrace();
	        } catch (URISyntaxException e) {
	        	System.out.println("urlEx");
	            e.printStackTrace();
	        }
	        
	        return "/screen";
	        
	    }
	    
	    public kakaoPayApprovalVO kakaoPayInfo(String pg_token) {
	 
	        log.info("KakaoPayInfoVO............................................");
	        log.info("-----------------------------");
	        
	        RestTemplate restTemplate = new RestTemplate();
	 
	        // 서버로 요청할 Header
	        HttpHeaders headers = new HttpHeaders();
	        headers.add("Authorization", "KakaoAK " + "e7a638f0535094326fe38f8ae0fc6bde");
	        headers.add("Accept", MediaType.APPLICATION_JSON_UTF8_VALUE);
	        headers.add("Content-Type", MediaType.APPLICATION_FORM_URLENCODED_VALUE + ";charset=UTF-8");
	 
	        // 서버로 요청할 Body
	        MultiValueMap<String, String> params = new LinkedMultiValueMap<String, String>();
	        params.add("cid", "TC0ONETIME");
	        params.add("tid", kakaoPayReadyVO.getTid());
	        params.add("partner_order_id", "1001");
	        params.add("partner_user_id", "gorany");
	        params.add("pg_token", pg_token);
	        params.add("total_amount", "2100");
	        
	        HttpEntity<MultiValueMap<String, String>> body = new HttpEntity<MultiValueMap<String, String>>(params, headers);
	        
	        try {
	            kakaoPayApprovalVO = restTemplate.postForObject(new URI(HOST + "/v1/payment/approve"), body, kakaoPayApprovalVO.class);
	            log.info("" + kakaoPayApprovalVO);
	          
	            return kakaoPayApprovalVO;
	        
	        } catch (RestClientException e) {
	            // TODO Auto-generated catch block
	            e.printStackTrace();
	        } catch (URISyntaxException e) {
	            // TODO Auto-generated catch block
	            e.printStackTrace();
	        }
	        
	        return null;
	    }
}
