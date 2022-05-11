package com.helpme.travel.module.admin;

import java.text.DateFormat;

import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;



@Controller
public class AdminController {
	
	   @Autowired
	   AdminServiceImpl service;	
	
	
	/* coupon----------------------------------------------------------------- */
	
	@RequestMapping(value = "/admin/couponEdit")
	public String AdminCouponEdit(Model model) throws Exception {
		
		return "admin/coupon/couponEdit";
	}
	
	@RequestMapping(value = "/admin/couponList")
	public String AdminCouponList(Model model) throws Exception {
		
		return "admin/coupon/couponList";
	}
		
	@RequestMapping(value = "/admin/couponView")
	public String AdminCouponView(Model model) throws Exception {
		
		return "admin/coupon/couponView";
	}
	

	
	/*---------------------------------------------------------------------------*/
	
	
	/* host--------------------------------------------------------------------*/
	
	@RequestMapping(value = "/admin/hostEdit")
	public String AdminHostEdit(Model model) throws Exception {
		
		return "admin/host/hostEdit";
	}
	
	@RequestMapping(value = "/admin/hostForm")
	public String AdminHostForm(Model model) throws Exception {
		
		return "admin/host/hostForm";
	}
	
	
	@RequestMapping(value = "/admin/hostList")
	public String AdminHostList(Model model) throws Exception {
		
		List<Admin> list = service.selectHost();
		model.addAttribute("list", list);
		
		return "admin/host/hostList";
	}
	
	@RequestMapping(value = "/admin/hostView")
	public String AdminHostView(AdminVo vo, Model model) throws Exception {
		
		   Admin rt = service.selectOneMember(vo);
		   model.addAttribute("rt", rt);		
		
		return "admin/host/hostView";
	}
	
	/*---------------------------------------------------------------------------*/
	
	
	/* lodging--------------------------------------------------------------------*/

	@RequestMapping(value = "/admin/lodgingEdit")
	public String AdminLodgingEdit(Model model) throws Exception {
		
		return "admin/lodging/lodgingEdit";
	}
	
	@RequestMapping(value = "/admin/lodgingList")
	public String AdminLodgingList(Model model) throws Exception {
		
		List<Admin> list = service.selectLodging();
		model.addAttribute("list", list);		
		
		return "admin/lodging/lodgingList";
	}
	
	@RequestMapping(value = "/admin/lodgingView")
	public String AdminLodgingView(AdminVo vo, Model model) throws Exception {
		
		   Admin rt = service.selectOneLodging(vo);
		   model.addAttribute("rt", rt);
		   
		return "admin/lodging/lodgingView";
	}
	
	/*---------------------------------------------------------------------------*/
	
	
	/* memberAdmin 관리자 회원정보--------------------------------------------------------------------*/

	@RequestMapping(value = "/admin/adminInfoEdit")
	public String AdminMemberEditAdmin(Model model) throws Exception {
		
		return "admin/memberAdmin/adminInfoEdit";
	}
	

	@RequestMapping(value = "/admin/adminInfoView")
	public String AdminMemberViewAdmin(Model model) throws Exception {
		
		return "admin/memberAdmin/adminInfoView";
	}
	
	/*---------------------------------------------------------------------------*/
	/* member--------------------------------------------------------------------*/
	
	@RequestMapping(value = "/admin/memberEdit")
	public String AdminMemberEdit(Model model) throws Exception {
		
		return "admin/member/memberEdit";
	}
	
	@RequestMapping(value = "/admin/memberForm")
	public String AdminMemberForm(Model model) throws Exception {
		
		return "admin/member/memberForm";
	}
	
	@RequestMapping(value = "/admin/memberList")
	public String AdminMemberList(Model model) throws Exception {
		
		List<Admin> list = service.selectMember();
		model.addAttribute("list", list);		
		
		return "admin/member/memberList";
	}
	
	@RequestMapping(value = "/admin/memberView")
	public String AdminMemberView(AdminVo vo, Model model) throws Exception {
		
		   Admin rt = service.selectOneMember(vo);
		   model.addAttribute("rt", rt);	
		   
		return "admin/member/memberView";
	}
	
	/*---------------------------------------------------------------------------*/
	
	
	/* reservation--------------------------------------------------------------------*/

	@RequestMapping(value = "/admin/reservationEdit")
	public String AdminReservationEdit(Model model) throws Exception {
		
		return "admin/reservation/reservationEdit";
	}
	
	@RequestMapping(value = "/admin/reservationList")
	public String AdminReservationList(Model model) throws Exception {
		
		return "admin/reservation/reservationList";
	}
	
	@RequestMapping(value = "/admin/reservationView")
	public String AdminReservationView(Model model) throws Exception {
		
		return "admin/reservation/reservationView";
	}
	

	
	/*---------------------------------------------------------------------------*/
	
	
	/* loginForm--------------------------------------------------------------------*/

	@RequestMapping(value = "/admin/loginForm")
	public String AdminLoginForm(Model model) throws Exception {
		
		return "admin/loginForm";
	}
	
	/*---------------------------------------------------------------------------*/
	
	
	/* mainView--------------------------------------------------------------------*/

	@RequestMapping(value = "/admin/mainView")
	public String AdminMainView(Model model) throws Exception {
		
		return "admin/mainView";
	}
	
	/*---------------------------------------------------------------------------*/
	
	
	/* password--------------------------------------------------------------------*/

	@RequestMapping(value = "/admin/password")
	public String AdminPassword(Model model) throws Exception {
		
		return "admin/password";
	}
	
	/*---------------------------------------------------------------------------*/
	
	
	
}
