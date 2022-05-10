package com.helpme.travel.module.user;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.helpme.travel.module.user.User;
import com.helpme.travel.module.user.UserVo;
import com.helpme.travel.module.user.UserServiceImpl;




@Controller
public class UserController {
	@Autowired
	UserServiceImpl service;
	/*
	 * private static final Logger logger =
	 * LoggerFactory.getLogger(UserController.class);
	 */
	
	// User
	@RequestMapping(value = "/user/loginForm") 
	public String UserLoginProc(Model model) throws Exception {

		return "user/member/loginForm";
	}
	
	@RequestMapping(value = "/user/signupForm")
	public String UserSignupForm(Model model) throws Exception {

		return "user/member/signupForm";
	}
	@RequestMapping(value = "/user/userInfoView")
	public String UserSignupView(UserVo vo, Model model) throws Exception {
		
		User item= service.selectOneMember(vo);
		model.addAttribute("item", item);
		
		return "user/member/userInfoView";
	}
	@RequestMapping(value = "/user/userInfoEdit")
	public String UserSignupEdit(Model model) throws Exception {
		
		return "user/member/userInfoEdit";
	}
	@RequestMapping(value = "/user/SignupDelete")
	public String UserSignupDelete(Model model) throws Exception {
		
		return "user/member/signupDelete";
	}
	
	

	// Search
	@RequestMapping(value = "/user/search")
	public String UserSearch(Model model) throws Exception {
		
		return "user/lodging/search";
	}
	@RequestMapping(value = "/user/searchFlex")
	public String UserSearchFlex(Model model) throws Exception {
		
		return "user/lodging/searchFlex";
	}
	
	// Lodging
	
	@RequestMapping(value = "/user/mainView")
	public String mainView(Model model) throws Exception {
		
		return "user/lodging/mainView";
	}
	
	@RequestMapping(value = "/user/lodgingView")
	public String UserLodgingView(Model model) throws Exception {
		
		return "user/lodging/lodgingView";
	}
	@RequestMapping(value = "/user/payment")
	public String UserPayment(Model model) throws Exception {
		
		return "user/lodging/payment";
	}
	@RequestMapping(value = "/user/reservation")
	public String UserReservation(Model model) throws Exception {
		
		return "user/lodging/reservation";
	}
	
	
	// Map
	@RequestMapping(value = "/user/mapList")
	public String UserMapList(Model model) throws Exception {
		
		return "user/map/mapList";
	}
	@RequestMapping(value = "/user/mapForm")
	public String UserMapForm(Model model) throws Exception {
		
		return "user/map/mapForm";
	}
	@RequestMapping(value = "/user/mapEdit")
	public String UserMapEdit(Model model) throws Exception {
		
		return "user/map/mapEdit";
	}
	@RequestMapping(value = "/user/UserMapDelete")
	public String UserMapDelete(Model model) throws Exception {
		
		return "redirect:/user/map/mapList";
	}
}
