package com.helpme.travel.module.user;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class UserController {
	
	/*
	 * private static final Logger logger =
	 * LoggerFactory.getLogger(UserController.class);
	 */
	
	// User
	@RequestMapping(value = "/user/member/loginForm") 
	public String UserLoginProc(Model model) throws Exception {

		return "user/member/loginForm";
	}
	
	@RequestMapping(value = "/user/member/signupForm")
	public String UserSignupForm(Model model) throws Exception {

		return "user/member/signupForm";
	}
	@RequestMapping(value = "/user/member/userInfoView")
	public String UserSignupView(Model model) throws Exception {
		
		return "user/member/userInfoView";
	}
	@RequestMapping(value = "/user/member/userInfoEdit")
	public String UserSignupEdit(Model model) throws Exception {
		
		return "user/member/userInfoEdit";
	}
	@RequestMapping(value = "/user/SignupDelete")
	public String UserSignupDelete(Model model) throws Exception {
		
		return "user/member/signupDelete";
	}
	
	

	// Search
	@RequestMapping(value = "/user/lodging/search")
	public String UserSearch(Model model) throws Exception {
		
		return "user/lodging/search";
	}
	@RequestMapping(value = "/user/lodging/searchFlex")
	public String UserSearchFlex(Model model) throws Exception {
		
		return "user/lodging/searchFlex";
	}
	
	// Lodging
	
	@RequestMapping(value = "/user/lodging/mainView")
	public String mainView(Model model) throws Exception {
		
		return "user/lodging/mainView";
	}
	
	@RequestMapping(value = "/user/lodging/lodgingView")
	public String UserLodgingView(Model model) throws Exception {
		
		return "user/lodging/lodgingView";
	}
	@RequestMapping(value = "/user/lodging/payment")
	public String UserPayment(Model model) throws Exception {
		
		return "user/lodging/payment";
	}
	@RequestMapping(value = "/user/lodging/reservation")
	public String UserReservation(Model model) throws Exception {
		
		return "user/lodging/reservation";
	}
	
	
	// Map
	@RequestMapping(value = "/user/map/mapList")
	public String UserMapList(Model model) throws Exception {
		
		return "user/map/mapList";
	}
	@RequestMapping(value = "/user/map/mapForm")
	public String UserMapForm(Model model) throws Exception {
		
		return "user/map/mapForm";
	}
	@RequestMapping(value = "/user/map/mapEdit")
	public String UserMapEdit(Model model) throws Exception {
		
		return "user/map/mapEdit";
	}
	@RequestMapping(value = "/user/UserMapDelete")
	public String UserMapDelete(Model model) throws Exception {
		
		return "redirect:/user/map/mapList";
	}
}
