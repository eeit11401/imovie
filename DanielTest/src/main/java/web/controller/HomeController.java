package web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import web.food.service.HomeService;

@Controller
public class HomeController {

	
	@Autowired
	HomeService homeService;

	@GetMapping("/")
	public String home() {
		return "index";
	}
	
	
}
