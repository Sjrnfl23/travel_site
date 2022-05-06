package com.helpme.travel.module.admin;

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
public class AdminController {
	
	/* ※coupon----------------------------------------------------------------- */
	
	@RequestMapping(value = "/admin/couponEdit")
	public String AdminCouponEdit(Model model) throws Exception {
		
		return "admin/coupon/couponEdit";
	}
	
	@RequestMapping(value = "/admin/couponList")
	public String AdminCouponList(Model model) throws Exception {
		
		return "admin/coupon/couponList";
	}
	
	@RequestMapping(value = "/admin/couponListBak")
	public String AdminCouponListBak(Model model) throws Exception {
		
		return "admin/coupon/couponListBak";
	}
	
	@RequestMapping(value = "/admin/couponListPermit")
	public String AdminCouponPermit(Model model) throws Exception {
		
		return "admin/coupon/couponListPermit";
	}
	
	@RequestMapping(value = "/admin/couponView")
	public String AdminCouponView(Model model) throws Exception {
		
		return "admin/coupon/couponView";
	}
	
	@RequestMapping(value = "/admin/couponViewBak")
	public String AdminCouponViewBak(Model model) throws Exception {
		
		return "admin/coupon/couponViewBak";
	}
	
	/*---------------------------------------------------------------------------*/
	
	
	/* ※host--------------------------------------------------------------------*/
	
	@RequestMapping(value = "/admin/hostEdit")
	public String AdminHostEdit(Model model) throws Exception {
		
		return "admin/host/hostEdit";
	}
	
	
	
	
	/*---------------------------------------------------------------------------*/
	
	
	/* ※lodging--------------------------------------------------------------------*/

	
	
	
	
	
	/*---------------------------------------------------------------------------*/
	
	
	/* ※member--------------------------------------------------------------------*/

	
	
	
	
	
	/*---------------------------------------------------------------------------*/
	
	
	/* ※reservation--------------------------------------------------------------------*/

	
	
	
	
	/*---------------------------------------------------------------------------*/
	
	
	/* ※loginForm--------------------------------------------------------------------*/

	
	
	/*---------------------------------------------------------------------------*/
	
	
	/* ※mainView--------------------------------------------------------------------*/

	
	
	/*---------------------------------------------------------------------------*/
	
	
	/* ※password--------------------------------------------------------------------*/

	
	
	/*---------------------------------------------------------------------------*/
	
	
	
}
