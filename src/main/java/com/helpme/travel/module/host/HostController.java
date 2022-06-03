package com.helpme.travel.module.host;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.helpme.travel.common.contants.Constants;
import com.helpme.travel.module.admin.Admin;


@Controller
public class HostController {

	@Autowired
	HostServiceImpl service;

	// coupon

	@RequestMapping(value = "/host/couponList")
	public String CouponList(Model model, HttpSession httpSession, @ModelAttribute("vo") HostVo vo) throws Exception {
		
		Integer sessSeq = Integer.valueOf(httpSession.getAttribute("sessSeq").toString());
		vo.setTvmmSeq(sessSeq);
		
		int count=service.selectOneCountCoupon(vo);
		vo.setParamsPaging(count);
		
		List<Host> list = service.selectCoupon(vo);
		model.addAttribute("list", list);

		return "/host/coupon/couponList";
	}

	@RequestMapping(value = "/host/couponForm")
	public String CouponForm(Model model, @ModelAttribute("vo") HostVo vo, HttpSession httpSession) throws Exception {
		Integer sessSeq = Integer.valueOf(httpSession.getAttribute("sessSeq").toString());

		vo.setTvmmSeq(sessSeq);
		

		List<Host> list = service.selectCouponOption(vo);
		model.addAttribute("list", list);

		return "/host/coupon/couponForm";
	}

	@RequestMapping(value = "/host/couponInst")
	public String CouponInst(Model model, @ModelAttribute("dto") Host dto, HttpSession httpSession) throws Exception {
		Integer sessSeq = Integer.valueOf(httpSession.getAttribute("sessSeq").toString());

		dto.setTvmmSeq(sessSeq);
		service.insertCoupon(dto);

		return "redirect:couponList";
	}

	@RequestMapping(value = "/host/couponView")
	public String CouponView(Model model, HostVo vo) throws Exception {

		Host host = service.selectOneCoupon(vo);
		model.addAttribute("rt", host);

		return "/host/coupon/couponView";
	}

	@RequestMapping(value = "/host/couponDelete")
	public String CouponDelete(HostVo vo) throws Exception {
		service.deleteCoupon(vo);

		return "redirect:couponList";
	}

	@RequestMapping(value = "/host/couponEdit")
	public String CouponEdit(Model model, HostVo vo) throws Exception {

		Host host = service.selectOneCoupon(vo);
		model.addAttribute("rt", host);

		return "host/coupon/couponEdit";
	}

	@RequestMapping(value = "/host/couponUpdate")
	public String CouponUpdate(Host dto) throws Exception {

		service.updateCoupon(dto);

		return "redirect:couponList";
	}

	// dm
	@RequestMapping(value = "/host/hostDm")
	public String hostDm() throws Exception {

		return "/host/dm/hostDm";
	}

	// lodging

	@RequestMapping(value = "/host/lodgingList")
	public String LodgingList(Model model, HttpSession httpSession, @ModelAttribute("vo") HostVo vo) throws Exception {	
		
		
		Integer sessSeq = Integer.valueOf(httpSession.getAttribute("sessSeq").toString());
		vo.setTvmmSeq(sessSeq);
		
		int count=service.selectOneCountLodging(vo);
		vo.setParamsPaging(count);

		List<Host> list = service.selectlodging(vo);
		model.addAttribute("list", list);

		return "/host/lodging/lodgingList";
	}

	@RequestMapping(value = "/host/lodgingView")
	public String LodgingView(HostVo vo, Model model) throws Exception {
		Host host = service.selectOnelodging(vo);
		model.addAttribute("rt", host);

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
	public String LodgingInsert(HttpSession httpSession, @ModelAttribute("dto") Host dto) throws Exception {
		Integer sessSeq = Integer.valueOf(httpSession.getAttribute("sessSeq").toString());

		dto.setTvmmSeq(sessSeq);
		service.insertlodging(dto);

		return "redirect:lodgingList";
	}

	@RequestMapping(value = "/host/lodgingEdit")
	public String LodgingEdit(HostVo vo, Model model) throws Exception {

		Host host = service.selectOnelodging(vo);
		model.addAttribute("rt", host);

		return "/host/lodging/lodgingEdit";
	}

	@RequestMapping(value = "/host/lodgingUpdate")
	public String LodgingUpdate(Host dto, Model model) throws Exception {

		service.updatelodging(dto);

		return "redirect:lodgingList";
	}

	// main
	@RequestMapping(value = "/host/mainView")
	public String mainView(@ModelAttribute("dto")Host dto,HttpSession httpSession,Model model,@ModelAttribute("vo")HostVo vo) throws Exception {
		Integer sessSeq = Integer.valueOf(httpSession.getAttribute("sessSeq").toString());
		dto.setTvmmSeq(sessSeq);
		vo.setTvmmSeq(sessSeq);
		
		Host host = service.selectOneSales(dto);
		model.addAttribute("item", host);
		
	
		
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

	

	@RequestMapping(value = "/host/signUpForm")
	public String signUpForm() throws Exception {

		return "/host/main/signUpForm";
	}
	@RequestMapping(value = "/host/hostInsert")
	public String hostInsert(@ModelAttribute("dto")Host dto) throws Exception {
		/*
		 * String tvmmAddressFull = dto.getTvmmAddress1() + dto.getTvmmAddress2();
		 * dto.setTvmmAddressFull(tvmmAddressFull);
		 */
		service.insertHost(dto);
		
		return "redirect:loginForm";
	}
	@RequestMapping(value = "/host/hostInfoView")
	public String hostInfoView(Model model, @ModelAttribute("vo") HostVo vo, HttpSession httpSession) throws Exception {
		Integer sessSeq = Integer.valueOf(httpSession.getAttribute("sessSeq").toString());
		vo.setTvmmSeq(sessSeq);

		Host host = service.selectOneHost(vo);
		model.addAttribute("rt", host);
		
		Host rt2 = service.selectOneUploaded(vo);
		model.addAttribute("rt2",rt2);
		
		return "/host/main/hostInfoView";
	}

	@RequestMapping(value = "/host/hostInfoEdit")
	public String hostInfoEdit(Model model, @ModelAttribute("vo") HostVo vo,HttpSession httpSession) throws Exception {
		Integer sessSeq = Integer.valueOf(httpSession.getAttribute("sessSeq").toString());
		vo.setTvmmSeq(sessSeq);
		
		Host host=service.selectOneHost(vo);
		model.addAttribute("rt",host);
		
		Host rt2 = service.selectOneUploaded(vo);
		model.addAttribute("rt2",rt2);
		
		return "/host/main/hostInfoEdit";
	}
	@RequestMapping(value = "/host/hostInfoUpdate")
	public String hostInfoUpdate(Model model, @ModelAttribute("dto")Host dto,HttpSession httpSession,@ModelAttribute("vo")HostVo vo) throws Exception {
		Integer sessSeq = Integer.valueOf(httpSession.getAttribute("sessSeq").toString());
		dto.setTvmmSeq(sessSeq);
		vo.setTvmmSeq(sessSeq);
		
		service.updateHost(dto);
		
		Host imgMember = service.selectOneUploaded(vo);
		httpSession.setAttribute("sessYear", imgMember.getYear());
		httpSession.setAttribute("sessMonth", imgMember.getMonth());
		httpSession.setAttribute("sessDay", imgMember.getDay());
		httpSession.setAttribute("sessUuidName", imgMember.getUuidName());
		
		return "redirect:hostInfoView";
	}

	// reservation


	@RequestMapping(value = "/host/reservationList")
	public String reservationList(Model model,@ModelAttribute("dto")Host dto,HttpSession httpSession,@ModelAttribute("vo")HostVo vo) throws Exception {
		
		Integer sessSeq = Integer.valueOf(httpSession.getAttribute("sessSeq").toString());
		
		vo.setTvmmSeq(sessSeq);
		
		int count=service.selectOneCountReservation(vo);
		vo.setParamsPaging(count);
	
		List<Host> list= service.selectReservation(vo);
		model.addAttribute("list",list);
		return "/host/reservation/reservationList";
	}

	@RequestMapping(value = "/host/reservationView")
	public String reservationView(@ModelAttribute("dto")Host dto,Model model,HttpSession httpSession) throws Exception {
		Integer sessSeq = Integer.valueOf(httpSession.getAttribute("sessSeq").toString());
		dto.setTvmmSeq(sessSeq);
		
		Host host=service.selectOneReservation(dto);
		model.addAttribute("rt",host);
		
		return "/host/reservation/reservationView";
	}
	
	@RequestMapping(value = "/host/reservationEdit")
	public String reservationEdit(@ModelAttribute("dto")Host dto,Model model,HttpSession httpSession) throws Exception {
		
		Integer sessSeq = Integer.valueOf(httpSession.getAttribute("sessSeq").toString());
		dto.setTvmmSeq(sessSeq);
		
		Host host=service.selectOneReservation(dto);
		model.addAttribute("rt",host);
		
		return "/host/reservation/reservationEdit";
	}
	
	@RequestMapping(value = "/host/reservationUpdate")
	public String reservationUpdate(Host dto,Model model) throws Exception {
		service.updateReservation(dto);
		
		
		return "redirect:reservationList";
	}
	@RequestMapping(value = "/host/reservationDelete")
	public String reservationDelete(HostVo vo) throws Exception {
		service.deleteReservation(vo);
		
		
		return "redirect:reservationList";
	}
	
	// login & logout
	@ResponseBody
	@RequestMapping(value = "/host/loginProc")
	public Map<String, Object> loginProc(Host dto,@ModelAttribute("vo")HostVo vo, HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();

		Host rtMember = service.selectOneLogin(dto);
		
		if (rtMember != null) {

			if (rtMember.getTvmmHostNy() == 1) {
				

				httpSession.setMaxInactiveInterval( 60 * Constants.SESSION_MINUTE);	//60second * 600 = 600minute 시간지나면 로그아웃됨
				

				httpSession.setAttribute("sessUserType", "호스트");
				httpSession.setAttribute("sessName", rtMember.getTvmmName());
				httpSession.setAttribute("sessEmail", rtMember.getTvmmEmailAccount());
				httpSession.setAttribute("sessSeq", rtMember.getTvmmSeq());
				
				vo.setTvmmSeq(rtMember.getTvmmSeq());
				
				Host imgMember = service.selectOneUploaded(vo);
				httpSession.setAttribute("sessYear", imgMember.getYear());
				httpSession.setAttribute("sessMonth", imgMember.getMonth());
				httpSession.setAttribute("sessDay", imgMember.getDay());
				httpSession.setAttribute("sessUuidName", imgMember.getUuidName());
				
				returnMap.put("rt", "success");
			} else {
				returnMap.put("rt", "notHost");
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
	//multi Del
	 @RequestMapping(value = "/host/lodgingMultiDel")
	   public String hostLodgingMultiDel(HostVo vo, RedirectAttributes redirectAttributes) throws Exception {
		   
			String[] checkboxSeqArray = vo.getCheckboxSeqArray();
			
			for(String checkboxSeq : checkboxSeqArray) {
				vo.setTvamSeq(checkboxSeq);
				 service.deletelodging(vo);	
			}	   
		   
			redirectAttributes.addFlashAttribute("vo", vo);
		   return "redirect:/host/lodgingList"; 
	   }
	 @RequestMapping(value = "/host/couponMultiDel")
	   public String hostCouponMultiDel(HostVo vo, RedirectAttributes redirectAttributes) throws Exception {
		   
			String[] checkboxSeqArray = vo.getCheckboxSeqArray();
			
			for(String checkboxSeq : checkboxSeqArray) {
				vo.setTvcpSeq(checkboxSeq);
				 service.deleteCoupon(vo);	
			}	   
		   
			redirectAttributes.addFlashAttribute("vo", vo);
		   return "redirect:/host/couponList"; 
	   }
	 @RequestMapping(value = "/host/reservationMultiDel")
	   public String hostReservationMultiDel(HostVo vo, RedirectAttributes redirectAttributes) throws Exception {
		   
			String[] checkboxSeqArray = vo.getCheckboxSeqArray();
			
			for(String checkboxSeq : checkboxSeqArray) {
				vo.setTvcpSeq(checkboxSeq);
				 service.deleteReservation(vo);	
			}	   
		   
			redirectAttributes.addFlashAttribute("vo", vo);
		   return "redirect:/host/ReservationList"; 
	   }
	
	

}
