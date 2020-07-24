package com.web.store.controller;

import java.io.IOException;
import java.text.ParseException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.web.store.model.SurveyBean;
import com.web.store.service.ProductServiec;

@Controller
@SessionAttributes({"orderNo","orderDate"})
public class SurveyController {

	@Autowired
	ProductServiec service;
	
	@GetMapping("/survey153")
	protected String toSurvey(Model model, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		String number = request.getParameter("orderNumber");
		String date = request.getParameter("orderDate");
		String movieName = (service.getProductById1((Integer.parseInt(request.getParameter("movie"))))).getMovieName();
		String roomName = (service.getProductById2((Integer.parseInt(request.getParameter("room"))))).getRoomName();
		model.addAttribute("orderNo",number);
		model.addAttribute("orderDate",date);
		model.addAttribute("movieName",movieName);
		model.addAttribute("roomName",roomName);
		return "survey"; //回到歷史清單
	}
	@PostMapping("/insertComment")
	protected String todb(Model model, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		String aa = request.getParameter("comment");
		int rate = Integer.parseInt(request.getParameter("satisfy"));
		
		System.out.println(rate);
		System.out.println(aa);

		String date = String.valueOf(model.getAttribute("orderDate"));
		String number = String.valueOf(model.getAttribute("orderNo"));
		SurveyBean surveybean = new SurveyBean(null,number,date,rate,aa);
		service.saveSurvey(surveybean);
		
		return "redirect:/allmyorder"; //回到歷史清單
	}
	@GetMapping("/surveyCancle")
	protected String cancleSurvey(Model model, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		return "redirect:/allmyorder"; //回到歷史清單
	}
}
