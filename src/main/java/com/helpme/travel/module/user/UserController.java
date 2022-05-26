package com.helpme.travel.module.user;

import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;



import java.util.List;


import java.util.Locale;
import java.util.Map;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import org.springframework.web.context.support.HttpRequestHandlerServlet;

import org.springframework.web.servlet.mvc.support.RedirectAttributes;




import com.helpme.travel.module.host.Host;
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
	

	
	@RequestMapping(value = "/loginForm")
	public String UserLoginProc(Model model) throws Exception {

		return "user/member/loginForm";
	}

	@RequestMapping(value = "/signupForm")
	public String UserSignupForm(Model model) throws Exception {

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
	public String UserSignupEdit(Model model) throws Exception {

		return "user/member/userInfoEdit";
	}

	@RequestMapping(value = "/SignupDelete")
	public String UserSignupDelete(Model model) throws Exception {

		return "user/member/signupDelete";
	}

	// Search
	@RequestMapping(value = "/search")
	public String UserSearch(Model model) throws Exception {

		return "user/lodging/search";
	}

	@RequestMapping(value = "/searchFlex")
	public String UserSearchFlex(@ModelAttribute("vo") UserVo vo, Model model) throws Exception {

		List<User> list = service.selectListSearchFlex(vo);
		model.addAttribute("list", list);

		return "user/lodging/searchFlex";
	}

	// Lodging

	@RequestMapping(value = "/")
	public String mainView(Model model,HttpServletRequest httpservletrequest) throws Exception {
		
		return "user/lodging/mainView";
	}

	@RequestMapping(value = "/lodgingView")
	public String UserLodgingView(UserVo vo, User dto, Model model) throws Exception {
		/*
		 * public String UserLodgingView(@ModelAttribute("vo") UserVo vo, User dto,
		 * Model model) throws Exception {
		 */
		
		/*
		 * User list= service.selectOneLodgingView(vo); model.addAttribute("list",
		 * list);
		 */

		User item = service.selectOneLodgingView(vo);
		model.addAttribute("item", item);
		
		return "user/lodging/lodgingView";
	}

	@RequestMapping(value = "/payment")
	public String UserPayment(UserVo vo, User dto, Model model) throws Exception {
		
		

		
		model.addAttribute("rtStartDate", dto.getHiddenStartDate());
		model.addAttribute("rtEndDate", dto.getHiddenEndDate());
		model.addAttribute("rtNumber", dto.getHiddenNumber());
		model.addAttribute("rtPay", dto.getHiddenPay());
	
		System.out.println("dto.getTvamLodgingName(): " + dto.getTvamLodgingName());
		System.out.println("dto.getTvamSeq(): " + dto.getTvamSeq());
		System.out.println("dto.getHiddenStartDate(): " + dto.getHiddenStartDate());
		System.out.println("dto.getHiddenEndDate(): " + dto.getHiddenEndDate());			
		
		
		 User item = service.selectOneLodgingView(vo); 
		 model.addAttribute("item",item);

		return "user/lodging/payment";
	}


	
	@RequestMapping(value = "/reservation")
	public String UserReservation(@ModelAttribute("vo") UserVo vo, Model model) throws Exception {
		
		User item= service.selectOneReservation(vo);
		model.addAttribute("item", item);

		return "user/lodging/reservation";
	}

	// PhotoMap
	@RequestMapping(value = "/mapList")
	public String UserMapList(Model model, UserVo vo, HttpSession httpSession) throws Exception {
		String sessSeq = String.valueOf(httpSession.getAttribute("sessSeq").toString());
		vo.setTvmmSeq(sessSeq);
		
		List<User> list = service.selectListMap(vo);
		model.addAttribute("list", list);

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

	// login & logout ======================================================
	@ResponseBody
	@RequestMapping(value = "/loginProc")
	public Map<String, Object> loginProc(User dto, HttpSession httpSession, Model model) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();

		User rtMember = service.selectOneLogin(dto);

		if (rtMember != null) {

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
}
