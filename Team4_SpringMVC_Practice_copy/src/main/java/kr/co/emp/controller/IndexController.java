package kr.co.emp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {
 //index.htm 요청 들어오면 View 페이지 제공
	
	@RequestMapping("index.htm")
	public String index(){
		//return "index.jsp";
		
		//tiles적용하기
		return "home.index"; //return 되는 view를 UrlBase로 가져가겠다는 것
	}
}
