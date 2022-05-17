package com.helpme.travel.module.host;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;





@Controller
public class HostController {

	@Autowired
	HostServiceImpl service;

	//coupon
	
	@RequestMapping(value = "/host/couponList")
	public String CouponList(Model model) throws Exception {
		List<Host> list=service.selectCoupon();
		model.addAttribute("list", list);
		
		return "/host/coupon/couponList";
	}
	@RequestMapping(value = "/host/couponForm")
	public String CouponForm(Model model,HostVo vo) throws Exception {
		List<Host> list=service.selectCouponOption();
		model.addAttribute("list", list);

		return "/host/coupon/couponForm";
	}
	
	@RequestMapping(value = "/host/couponInst")
	public String CouponInst(Model model,Host dto) throws Exception {
		
		service.insertCoupon(dto);
		
		
		return "redirect:couponList";
	}
	
	@RequestMapping(value = "/host/couponView")
	public String CouponView(Model model,HostVo vo) throws Exception {
		Host host = service.selectOneCoupon(vo);
		model.addAttribute("rt",host);

		return "/host/coupon/couponView";
	}
	@RequestMapping(value = "/host/couponDelete")
	public String CouponDelete(HostVo vo) throws Exception {
		service.deleteCoupon(vo);

		return "redirect:couponList";
	}
	@RequestMapping(value = "/host/couponEdit")
	public String CouponEdit(Model model,HostVo vo) throws Exception {

		Host host = service.selectOneCoupon(vo);
		model.addAttribute("rt", host);

		return "host/coupon/couponEdit";
	}
	@RequestMapping(value = "/host/couponUpdate")
	public String CouponUpdate(Host dto) throws Exception {

		service.updateCoupon(dto);
		
		return "redirect:couponList";
	}
	
	
	
	//dm
	@RequestMapping(value = "/host/hostDm")
	public String hostDm() throws Exception {

		

		return "/host/dm/hostDm";
	}
	

	
	
	// lodging
	
	@RequestMapping(value = "/host/lodgingList")
	public String LodgingList(Model model) throws Exception {
		List<Host> list=service.selectlodging();
		model.addAttribute("list", list);
		

		return "/host/lodging/lodgingList";
	}
	
	@RequestMapping(value = "/host/lodgingView")
	public String LodgingView(HostVo vo,Model model) throws Exception {
		Host host = service.selectOnelodging(vo);
		model.addAttribute("rt",host);

		

		return "/host/lodging/lodgingView";
	}
	@RequestMapping(value = "/host/lodgingDelete")
	public String LodgingDelete(HostVo vo) throws Exception {
		service.deletelodging(vo);

		return "redirect:lodgingList";
	}
	@RequestMapping(value = "/host/lodgingForm")
	public String LodgingForm() throws Exception {

		

		return "/host/lodging/lodgingForm";
	}
	@RequestMapping(value = "/host/lodgingInsert")
	public String LodgingInsert(Host dto) throws Exception {
		
		service.insertlodging(dto);
		

		return "redirect:lodgingList";
	}
	@RequestMapping(value = "/host/lodgingEdit")
	public String LodgingEdit(HostVo vo,Model model) throws Exception {

		Host host = service.selectOnelodging(vo);
		model.addAttribute("rt",host);


		return "/host/lodging/lodgingEdit";
	}
	
	@RequestMapping(value = "/host/lodgingUpdate")
	public String LodgingUpdate(Host dto,Model model) throws Exception {

		service.updatelodging(dto);


		return "redirect:lodgingList";
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
	
	//login & logout
	@ResponseBody
	@RequestMapping(value = "/host/loginProc")
	public Map<String, Object> loginProc(Host dto, HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();

		
		
		Host rtMember = service.selectOneLogin(dto);
		
		if(rtMember != null)  {
			
			if(rtMember.getTvmmHostNy()== 1) {
				httpSession.setAttribute("sessUserType","호스트");
				httpSession.setAttribute("sessName", rtMember.getTvmmName());
				httpSession.setAttribute("sessEmail", rtMember.getTvmmEmailAccount());

				returnMap.put("rt", "success");
			}else {
				returnMap.put("rt","notHost");
			}
			
		
		} else {
			
			returnMap.put("rt", "fail");
		}
		return returnMap;
		
	}
	
	
	@ResponseBody
	@RequestMapping(value = "/host/logoutProc")
	public Map<String, Object> logOutProc(Host dto, HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		
		httpSession.invalidate();
		
		returnMap.put("rt", "success");
		
		return returnMap;
		
		
	}
	
}

