package com.web.store.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.context.request.WebRequest;

import com.web.store.model.CartOrderBean;
import com.web.store.model.FoodShoppingCart;
import com.web.store.service.ProductServiec;

@Controller
@SessionAttributes({"OrderCart","FoodCart"})
public class insertCartToDB {
	
	@Autowired
	ProductServiec service;
	
	@GetMapping("/insert.do")
	protected String insertDATA(Model model, WebRequest webRequest, SessionStatus status) {
		CartOrderBean cob = (CartOrderBean) model.getAttribute("OrderCart");
		FoodShoppingCart fsc = (FoodShoppingCart) model.getAttribute("FoodCart");
		System.out.println("cobID = "+cob.getOrderNo());
		System.out.println("fsc = "+fsc);
		service.cartToDB(cob);
		status.setComplete();
		webRequest.removeAttribute("FoodCart", WebRequest.SCOPE_SESSION);
		webRequest.removeAttribute("OrderCart", WebRequest.SCOPE_SESSION);
		return "redirect:/";
	}
}
