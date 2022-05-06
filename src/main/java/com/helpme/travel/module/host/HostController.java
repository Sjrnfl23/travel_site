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
	
	@RequestMapping(value = "/host/coupon/couponList")
	public String CouponList() throws Exception {

		

		return "/host/coupon/couponList";
	}
	@RequestMapping(value = "/host/coupon/couponForm")
	public String CouponForm() throws Exception {

		

		return "/host/coupon/couponForm";
	}
	@RequestMapping(value = "/host/coupon/couponEdit")
	public String CouponEdit() throws Exception {

		

		return "/host/coupon/couponEdit";
	}
	@RequestMapping(value = "/host/coupon/couponView")
	public String CouponView() throws Exception {

		

		return "/host/coupon/couponView";
	}
	
	@RequestMapping(value = "/host/coupon/couponListPermit")
	public String couponListPermit() throws Exception {

		

		return "/host/coupon/couponListPermit";
	}
	@RequestMapping(value = "/host/coupon/couponListBak")
	public String couponListBak() throws Exception {

		

		return "/host/coupon/couponListBak";
	}
	@RequestMapping(value = "/host/coupon/couponViewBak")
	public String couponViewBak() throws Exception {

		

		return "/host/coupon/couponViewBak";
	}
	
	
	
	//dm
	@RequestMapping(value = "/host/dm/hostDm")
	public String hostDm() throws Exception {

		

		return "/host/dm/hostDm";
	}
	

	
	
	// lodging
	
	@RequestMapping(value = "/host/lodging/lodgingList")
	public String LodgingList() throws Exception {

		

		return "/host/lodging/lodgingList";
	}
	
	@RequestMapping(value = "/host/lodging/lodgingView")
	public String LodgingView() throws Exception {

		

		return "/host/lodging/lodgingView";
	}
	
	@RequestMapping(value = "/host/lodging/lodgingForm")
	public String LodgingForm() throws Exception {

		

		return "/host/lodging/lodgingForm";
	}
	@RequestMapping(value = "/host/lodging/lodgingEdit")
	public String LodgingEdit() throws Exception {

		

		return "/host/lodging/lodgingEdit";
	}
	
	
	//main
	@RequestMapping(value = "/host/main/mainView")
	public String mainView() throws Exception {

		

		return "/host/main/mainView";
	}
	
	@RequestMapping(value = "/host/main/password")
	public String password() throws Exception {

		

		return "/host/main/password";
	}
	@RequestMapping(value = "/host/main/loginForm")
	public String loginForm() throws Exception {

		

		return "/host/main/loginForm";
	}
	@RequestMapping(value = "/host/main/hostInfoView")
	public String hostInfoView() throws Exception {

		

		return "/host/main/hostInfoView";
	}
	@RequestMapping(value = "/host/main/hostInfoForm")
	public String hostInfoForm() throws Exception {

		

		return "/host/main/hostInfoForm";
	}
	@RequestMapping(value = "/host/main/hostInfoEdit")
	public String hostInfoEdit() throws Exception {

		

		return "/host/main/hostInfoEdit";
	}
	
	
	
	//reservation
	@RequestMapping(value = "/host/reservation/reservationEdit")
	public String reservationEdit() throws Exception {

		

		return "/host/reservation/reservationEdit";
	}
	@RequestMapping(value = "/host/reservation/reservationList")
	public String reservationList() throws Exception {

		

		return "/host/reservation/reservationList";
	}
	@RequestMapping(value = "/host/reservation/reservationView")
	public String reservationView() throws Exception {

		

		return "/host/reservation/reservationView";
	}
	
	
	
}

