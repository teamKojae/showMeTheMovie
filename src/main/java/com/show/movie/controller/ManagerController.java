package com.show.movie.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class ManagerController {
	@Autowired
	ServletContext context;
	
	@RequestMapping(value = "/progress2")
	public String progress2(Model model) {
		return "progress2";
		
	}

	@RequestMapping("/fileUpload")
	public String fileUpload(MultipartHttpServletRequest multipartHttpServletRequest, Model model) throws IOException {
		//파일경로
		
		String filePath =context.getRealPath("/resources/images/");
		System.out.println(filePath);
		//파일들을 List형식으로 보관
		List<MultipartFile> files = multipartHttpServletRequest.getFiles("files");
		
		File file = new File(filePath);
		//파일이 없다면 디렉토리를 생성
		if (file.exists() == false) {
			file.mkdirs();
		}
		
		for (int i = 0; i < files.size(); i++) {
			System.out.println(files.get(i).getOriginalFilename() +" 업로드");
			//파일 업로드 소스 여기에 삽입
			file = new File(filePath+files.get(i).getOriginalFilename());
			files.get(i).transferTo(file);	
			System.out.println("file   "+file.getName());
		}		
		return "/";
	}

}
