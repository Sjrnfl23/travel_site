package com.helpme.travel.module.user;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.helpme.travel.common.contants.Constants;


@Controller
public class UserController {
	@Autowired
	UserServiceImpl service;
	
	/*
	 * private static final Logger logger =
	 * LoggerFactory.getLogger(UserController.class);
	 */

	// User
	

	
	@RequestMapping(value = "/loginForm")
	public String UserLoginProc(Model model) throws Exception {

		return "user/member/loginForm";
	}

	@RequestMapping(value = "/signupForm")
	public String UserSignupForm(Model model,HttpServletRequest request) throws Exception {
		String email=request.getParameter("tvmmEmailAccount");
		model.addAttribute("email",email);
		return "user/member/signupForm";
	}

	@RequestMapping(value = "/userInst")
	public String memberInst(@ModelAttribute("vo") UserVo vo, User dto, RedirectAttributes redirectAttributes)
			throws Exception {

		int result = service.insertMember(dto);
		System.out.println("result: " + result);

		return "redirect:loginForm";
	}

	@RequestMapping(value = "/userInfoView")
	public String UserSignupView(UserVo vo, Model model, HttpSession httpSession) throws Exception {
		String sessSeq = String.valueOf(httpSession.getAttribute("sessSeq").toString());
		vo.setTvmmSeq(sessSeq);
		
		
		User item = service.selectOneMember(vo);
		model.addAttribute("item", item);

		return "user/member/userInfoView";
	}

	@RequestMapping(value = "/userInfoEdit")
	public String UserInfoEdit(Model model,UserVo vo,HttpSession httpSession) throws Exception {
		String sessSeq = String.valueOf(httpSession.getAttribute("sessSeq").toString());
		vo.setTvmmSeq(sessSeq);
		
		User item= service.selectOneMember(vo);
		model.addAttribute("item",item);
		
		return "user/member/userInfoEdit";
	}
	@RequestMapping(value = "/userInfoUpdate")
	public String UserInfoUpdate(Model model,HttpSession httpSession,User dto) throws Exception {
		String sessSeq = String.valueOf(httpSession.getAttribute("sessSeq").toString());
		dto.setTvmmSeq(sessSeq);
		service.updateMember(dto);
		
		return "redirect:user/member/userInfoView";
	}

	@RequestMapping(value = "/SignupDelete")
	public String UserSignupDelete(Model model) throws Exception {

		return "user/member/signupDelete";
	}

	// Search
	@RequestMapping(value = "/search")
	public String UserSearch(Model model, UserVo vo) throws Exception {
		
		//User list = service.selectOneLodgingView(vo);
		//model.addAttribute("item", list);
		
		return "user/lodging/search";
	}

	@RequestMapping(value = "/searchFlex")
	public String UserSearchFlex(@ModelAttribute("vo") UserVo vo, Model model) throws Exception {
		
		
		int count = service.selectSearchFlexCount(vo);
		vo.setParamsPaging(count);
		
		if(count != 0) {
		List<User> list = service.selectListSearchFlex(vo);
		model.addAttribute("list", list);
		} else {
			// by pass
		}
		
		
		model.addAttribute("vo", vo);

		return "user/lodging/searchFlex";
	}
	
	@ResponseBody
	@RequestMapping(value = "locationAjaxList")
	public Map<String, Object> locationAjaxList(Model model, UserVo vo, User dto) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		

		vo.setParamsPaging(service.selectSearchCount(vo));
		
		if (vo.getTotalRows() > 0) {
			List<User> lodglist = service.selectListSearch(vo);
			model.addAttribute("lodglist", lodglist);
			model.addAttribute("vo", vo);
			returnMap.put("lodglist", lodglist);
			returnMap.put("vo", vo);
			
			System.out.println(":::::::::::lodglist:::::::::::" +lodglist);
			System.out.println(":::::::::::vo.getTotalRows():::::::::::" +vo.getTotalRows());
			
			dto.setNeLat(dto.getNeLat());
			dto.setNeLng(dto.getNeLng());
			dto.setSwLat(dto.getSwLat());
			dto.setSwLng(dto.getSwLng());
			
			
			returnMap.put("count", lodglist.size());
		} else {
			returnMap.put("count", 0);
		}
		returnMap.put("rt", "success");

		return returnMap;
	}

	// Lodging

	@RequestMapping(value = "/")
	public String mainView(Model model,HttpServletRequest httpservletrequest) throws Exception {
		
		return "user/lodging/mainView";
	}

	@RequestMapping(value = "/lodgingView")
	public String UserLodgingView(@ModelAttribute("vo")UserVo vo, User dto, Model model) throws Exception {
		Double avgReview=2.5;
		try {
			avgReview=service.selectOneReviewAvg(vo);
			
		}catch(Exception e) {
			
		}
		model.addAttribute("avgReview",avgReview);
		int count = service.selectReviewCount(vo);
		vo.setParamsPaging(count);
		 if(count != 0) {										
			 List<User> item1 = service.selectListReview(vo);
				model.addAttribute("rt", item1);
	   } else {
		   // by pass
	   }
		User item2 = service.selectOneLodgingView(vo);
		model.addAttribute("item", item2);
		
		List<User> lodglist = service.selectListLodgingUploaded(vo);
		model.addAttribute("lodglist", lodglist);
		
		return "user/lodging/lodgingView";
	}

	@RequestMapping(value = "/payment")
	public String UserPayment(@ModelAttribute("dto")User dto, Model model, UserVo vo,  HttpSession httpSession) throws Exception {
		
		String sessSeq = String.valueOf(httpSession.getAttribute("sessSeq").toString());
		dto.setTvmmSeq(sessSeq);	
		
		model.addAttribute("rtStartDate", dto.getHiddenStartDate());
		model.addAttribute("rtEndDate", dto.getHiddenEndDate());
		model.addAttribute("rtDay", dto.getHiddenDay());
		model.addAttribute("rtNumber", dto.getHiddenNumber());
		model.addAttribute("rtPriceOrigin", dto.getHiddenPriceOrigin());
		model.addAttribute("rtPriceFee", dto.getHiddenPriceFee());
		model.addAttribute("rtPay", dto.getHiddenPay());
		model.addAttribute("rtCoupon", dto.getHiddenCoupon());
		model.addAttribute("rtTvmmSeq", dto.getTvmmSeq());
	
		System.out.println("dto.getTvamLodgingName(): " + dto.getTvamLodgingName());
		System.out.println("dto.getTvamSeq(): " + dto.getTvamSeq());
		System.out.println("dto.getHiddenStartDate(): " + dto.getHiddenStartDate());
		System.out.println("dto.getHiddenEndDate(): " + dto.getHiddenEndDate());			
		
		 User item = service.selectOneLodgingView(vo);
		 model.addAttribute("item",item);
				 
		return "user/lodging/payment";
	}

	@RequestMapping(value = "/reservationInst")
	public String reservationInst(@ModelAttribute("vo") UserVo vo, User dto, RedirectAttributes redirectAttributes, HttpSession httpSession) throws Exception {
		
		String sessSeq = httpSession.getAttribute("sessSeq").toString();

		dto.setTvmmSeq(sessSeq);
		vo.setTvmmSeq(sessSeq);
		
		int result = service.insertReservation(dto);
		System.out.println("result: " + result);

		return "redirect:/reservation?tvmmSeq=" + dto.getTvmmSeq();
	}	
	

	
	@RequestMapping(value = "/reservation")
	public String UserReservation(@ModelAttribute("vo") UserVo vo, Model model, HttpSession httpSession) throws Exception {

		String sessSeq = String.valueOf(httpSession.getAttribute("sessSeq").toString());
		vo.setTvmmSeq(sessSeq);		

	   int count = service.selectOneCountReservation(vo);				// count 가져올 것
	   vo.setParamsPaging(count);
	   
	   if(count != 0) {										// count가 0이 아니면 list 가져오는 부분 수행 후 model 개체에 담기
			List<User> list = service.selectReservation(vo);
			model.addAttribute("list", list);
	   } else {
		   // by pass
	   }			
		
		
		
		return "user/lodging/reservation";
	}

	// PhotoMap
	@RequestMapping(value = "/mapList")
	public String UserMapList(Model model, UserVo vo, HttpSession httpSession) throws Exception {
		String sessSeq = String.valueOf(httpSession.getAttribute("sessSeq").toString());
		vo.setTvmmSeq(sessSeq);
		
		int count = service.selectPhotomapCount(vo);
		vo.setParamsPaging(count);
		
		if(count != 0) {
		List<User> list = service.selectListMap(vo);
		model.addAttribute("list", list);
		} else {
			// by pass
		}
		model.addAttribute("vo", vo);
		
		return "user/map/mapList";
	}

	@RequestMapping(value = "/mapForm")
	public String UserMapForm(Model model, UserVo vo, HttpSession httpSession) throws Exception {
		String sessSeq = String.valueOf(httpSession.getAttribute("sessSeq").toString());
		vo.setTvmmSeq(sessSeq);
		
		return "user/map/mapForm";
	}

	@RequestMapping(value = "/mapInst")
	public String mapInst(@ModelAttribute("vo") UserVo vo, User dto, RedirectAttributes redirectAttributes, HttpSession httpSession) throws Exception {
		String sessSeq = httpSession.getAttribute("sessSeq").toString();

		dto.setTvmmSeq(sessSeq);
		vo.setTvmmSeq(sessSeq);
		
		int result = service.insertMap(dto);
		System.out.println("result: " + result);
		System.out.println("dto.getTvplSeq: " + dto.getTvplSeq());

		return "redirect:/mapList";
	}

	@RequestMapping(value = "/mapEdit")
	public String UserMapEdit(Model model, UserVo vo, User dto) throws Exception {

		User item= service.selectOneMap(vo);
		model.addAttribute("item2", item);
		
		return "user/map/mapEdit";
	}
	
	@RequestMapping(value = "/mapUpdt")
	public String UserMapUpdt(Model model, UserVo vo, User dto, RedirectAttributes redirectAttributes) throws Exception {
		
		int result = service.updateMap(dto);
		System.out.println("result: " + result);
		System.out.println("dto.getTvplSeq: " + dto.getTvplSeq());
		
		
		return "redirect:/mapList?tvplSeq=" +dto.getTvplSeq();
	}

	@RequestMapping(value = "/UserMapDelete")
	public String UserMapDelete(Model model, UserVo vo) throws Exception {

		service.deleteMap(vo);
		service.deleteMapPhoto(vo);
		
		return "redirect:/mapList";
	}
	//dm
		@RequestMapping(value = "/dm")
		public String dm(Model model, UserVo vo, User dto, HttpSession httpSession) throws Exception {
			
			User item = service.selectHostDm(vo);
			model.addAttribute("item", item);
			
			System.out.println("::::::::::item:::::::::::: " + item);
				
			return "user/lodging/dm";
		}

	// login & logout ======================================================
	@ResponseBody
	@RequestMapping(value = "/loginProc")
	public Map<String, Object> loginProc(User dto, HttpSession httpSession, Model model) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();

		User rtMember = service.selectOneLogin(dto);

		if (rtMember != null) {
			
			httpSession.setMaxInactiveInterval( 60 * Constants.SESSION_MINUTE);	//60second * 600 = 600minute 시간지나면 로그아웃됨

			httpSession.setAttribute("sessUserType", "일반 유저");
			httpSession.setAttribute("sessName", rtMember.getTvmmName());
			httpSession.setAttribute("sessEmail", rtMember.getTvmmEmailAccount());
			httpSession.setAttribute("sessSeq", rtMember.getTvmmSeq());
			returnMap.put("rt", "success");

		} else {
			returnMap.put("rt", "fail");
		}
		return returnMap;

	}

	@ResponseBody
	@RequestMapping(value = "/logoutProc")
	public Map<String, Object> logOutProc(User dto, HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		System.out.println("로그아웃");
		httpSession.invalidate();

		returnMap.put("rt", "success");

		return returnMap;

	}

	
	@ResponseBody
	@RequestMapping(value = "/loginCheck")
	public Map<String, Object> loginCheck(User dto, HttpServletRequest request) throws Exception {
		
		Map<String, Object> returnMap = new HashMap<String, Object>();
		int passNy =0;
		if(request.getSession().getAttribute("sessName")!=null) {
			System.out.println(request.getSession().getAttribute("sessName"));
			passNy=1;
			
		}
		
		
		System.out.println(passNy);
		
		if (passNy==1 ) {
			returnMap.put("rt", "pass");
		} else {
			returnMap.put("rt", "nonpass");
		}

		return returnMap;

	}
	@ResponseBody //구글 로그인
	@RequestMapping(value = "/GloginProc")
	public Map<String, Object> GloginProc(@RequestParam("tvmmEmailAccount")String email,@ModelAttribute("dto")User dto, HttpSession httpSession,Model model) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		System.out.println(email);
		  dto.setTvmmEmailAccount(email);
		  int userNy=service.selectGoogleNy(dto);
		  
		  if(userNy==1) {
			  User user=service.selectOneGlogin(dto);
			  httpSession.setAttribute("sessSeq",user.getTvmmSeq());
			  httpSession.setAttribute("sessName",user.getTvmmName());
			  httpSession.setAttribute("sessId",user.getTvmmEmailAccount());
			  returnMap.put("rt", "success");
			  
			  
		  }else {
			
			  returnMap.put("rt","signUp");
		  }
		 
		return returnMap;
		
		
		/*
		 * if(rtMember != null) { // rtMember = service.selectOneLogin(dto);
		 * httpSession.setAttribute("sessSeq", rtMember.getIfmmSeq());
		 * httpSession.setAttribute("sessId", rtMember.getIfmmId());
		 * httpSession.setAttribute("sessName", rtMember.getIfmmName());
		 * 
		 * returnMap.put("rt", "success"); } else { returnMap.put("rt", "fail"); }
		 * return returnMap;
		 */
		
		
	}
	
	@RequestMapping(value = "insertReview")
	public String insertReview(Model model,@ModelAttribute("dto")User dto,HttpSession httpSession) throws Exception {
		String sessSeq = String.valueOf(httpSession.getAttribute("sessSeq").toString());
		dto.setTvmmSeq(sessSeq);
		service.insertReview(dto);
		
		return "redirect:lodgingView?tvamSeq="+dto.getTvamSeq()+"&thisPage=1";
	}
}