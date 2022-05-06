package com.helpme.travel.module.host;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class HostController {

	@Autowired
	/* XdminServiceImpl service; */

	//coupon
	
	@RequestMapping(value = "/host/couponList")
	public String CouponList() throws Exception {

		

		return "/host/coupon/couponList";
	}
	@RequestMapping(value = "/host/couponForm")
	public String CouponForm() throws Exception {

		

		return "/host/coupon/couponForm";
	}
	@RequestMapping(value = "/host/couponEdit")
	public String CouponEdit() throws Exception {

		

		return "/host/coupon/couponEdit";
	}
	@RequestMapping(value = "/host/couponView")
	public String CouponView() throws Exception {

		

		return "/host/coupon/couponView";
	}
	
	@RequestMapping(value = "/host/couponListPermit")
	public String couponListPermit() throws Exception {

		

		return "/host/coupon/couponListPermit";
	}
	@RequestMapping(value = "/host/couponListBak")
	public String couponListBak() throws Exception {

		

		return "/host/coupon/couponListBak";
	}
	@RequestMapping(value = "/host/couponViewBak")
	public String couponViewBak() throws Exception {

		

		return "/host/coupon/couponViewBak";
	}
	
	
	
	//dm
	@RequestMapping(value = "/host/hostDm")
	public String hostDm() throws Exception {

		

		return "/host/dm/hostDm";
	}
	

	
	
	// lodging
	
	@RequestMapping(value = "/host/lodgingList")
	public String LodgingList() throws Exception {

		

		return "/host/lodging/lodgingList";
	}
	
	@RequestMapping(value = "/host/lodgingView")
	public String LodgingView() throws Exception {

		

		return "/host/lodging/lodgingView";
	}
	
	@RequestMapping(value = "/host/lodgingForm")
	public String LodgingForm() throws Exception {

		

		return "/host/lodging/lodgingForm";
	}
	@RequestMapping(value = "/host/lodgingEdit")
	public String LodgingEdit() throws Exception {

		

		return "/host/lodging/lodgingEdit";
	}
	
	
	//main
	@RequestMapping(value = "/host/mainView")
	public String mainView() throws Exception {

		

		return "/host/main/mainView";
	}
	
	@RequestMapping(value = "/host/password")
	public String password() throws Exception {

		

		return "/host/main/password";
	}
	@RequestMapping(value = "/host/loginForm")
	public String loginForm() throws Exception {

		

		return "/host/main/loginForm";
	}
	@RequestMapping(value = "/host/hostInfoView")
	public String hostInfoView() throws Exception {

		

		return "/host/main/hostInfoView";
	}
	@RequestMapping(value = "/host/signUpForm")
	public String signUpForm() throws Exception {

		

		return "/host/main/signUpForm";
	}
	@RequestMapping(value = "/host/hostInfoEdit")
	public String hostInfoEdit() throws Exception {

		

		return "/host/main/hostInfoEdit";
	}
	
	
	
	//reservation
	@RequestMapping(value = "/host/reservationEdit")
	public String reservationEdit() throws Exception {

		

		return "/host/reservation/reservationEdit";
	}
	@RequestMapping(value = "/host/reservationList")
	public String reservationList() throws Exception {

		

		return "/host/reservation/reservationList";
	}
	@RequestMapping(value = "/host/reservationView")
	public String reservationView() throws Exception {

		

		return "/host/reservation/reservationView";
	}
	
	
	
}

