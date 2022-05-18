package com.helpme.travel.module.admin;

import java.text.DateFormat;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.helpme.travel.module.host.Host;



@Controller
public class AdminController {
	
	   @Autowired
	   AdminServiceImpl service;	
	
	
	/* coupon----------------------------------------------------------------- */
	
	@RequestMapping(value = "/admin/couponEdit")
	public String AdminCouponEdit(AdminVo vo, Model model) throws Exception {
		
		   Admin rt = service.selectOneCoupon(vo);
		   model.addAttribute("rt", rt);		
		
		return "admin/coupon/couponEdit";
	}
	
	@RequestMapping(value = "/admin/couponUpdt")
	public String AdminCouponUpdt(AdminVo vo, Admin dto, Model model) throws Exception {
		
		service.updateCoupon(dto);	
		
		return "redirect:/admin/couponView?tvcpSeq=" + dto.getTvcpSeq(); 
	}	
	
	@RequestMapping(value = "/admin/couponList")
	public String AdminCouponList(@ModelAttribute("vo") AdminVo vo, Model model) throws Exception {

		   int count = service.selectOneCountCoupon(vo);				// count 가져올 것
		   vo.setParamsPaging(count);
		   
		   if(count != 0) {										// count가 0이 아니면 list 가져오는 부분 수행 후 model 개체에 담기
				List<Admin> list = service.selectCoupon(vo);
				model.addAttribute("list", list);
		   } else {
			   // by pass
		   }			
		
		return "admin/coupon/couponList";
	}
	
	
	@RequestMapping(value = "/admin/couponView")
	public String AdminCouponView(AdminVo vo, Model model) throws Exception {
		
		   Admin rt = service.selectOneCoupon(vo);
		   model.addAttribute("rt", rt);	
		   
		return "admin/coupon/couponView";
	}
	
	   @RequestMapping(value = "/admin/couponDel")
	   public String AdminCouponDel(AdminVo vo) throws Exception {
		   
		   service.DeleteCoupon(vo);	
		   
		   return "redirect:/admin/couponList"; 
	   }

	
	/*---------------------------------------------------------------------------*/
	
	
	/* host--------------------------------------------------------------------*/
	
	@RequestMapping(value = "/admin/hostEdit")
	public String AdminHostEdit(AdminVo vo, Model model) throws Exception {
		
		   Admin rt = service.selectOneMember(vo);
		   model.addAttribute("rt", rt);		
		
		return "admin/host/hostEdit";
	}
	
	@RequestMapping(value = "/admin/hostUpdt")
	public String AdminHostUpdt(AdminVo vo, Admin dto, Model model) throws Exception {
		
		service.updateMember(dto);	
		
		return "redirect:/admin/hostView?tvmmSeq=" + dto.getTvmmSeq(); 
	}

	@RequestMapping(value = "/admin/hostDel")
	public String AdminHostDel(AdminVo vo) throws Exception {
		
		service.DeleteMember(vo);	
		
		return "redirect:/admin/hostList"; 
	}	
	
	
	@RequestMapping(value = "/admin/hostForm")
	public String AdminHostForm(Model model) throws Exception {
		
		return "admin/host/hostForm";
	}
	
	
	@RequestMapping(value = "/admin/hostList")
	public String AdminHostList(@ModelAttribute("vo") AdminVo vo, Model model) throws Exception {
	
		   int count = service.selectOneCountHost(vo);				// count 가져올 것
		   vo.setParamsPaging(count);
		   
		   if(count != 0) {										// count가 0이 아니면 list 가져오는 부분 수행 후 model 개체에 담기
				List<Admin> list = service.selectHost(vo);
				model.addAttribute("list", list);
		   } else {
			   // by pass
		   }		
		
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
	public String AdminLodgingEdit(AdminVo vo, Model model) throws Exception {

		   Admin rt = service.selectOneLodging(vo);
		   model.addAttribute("rt", rt);
		   
		   model.addAttribute("codeLodging", AdminServiceImpl.selectListForCacheLodging("1"));
		
		return "admin/lodging/lodgingEdit";
	}

	@RequestMapping(value = "/admin/lodgingUpdt")
	public String AdminLodgingUpdt(AdminVo vo, Admin dto, Model model) throws Exception {
		
		service.updateLodging(dto);	
		
		return "redirect:/admin/lodgingView?tvamSeq=" + dto.getTvamSeq(); 
	}	
	
	
	@RequestMapping(value = "/admin/lodgingList")
	public String AdminLodgingList(@ModelAttribute("vo") AdminVo vo, Model model) throws Exception {
		
		   int count = service.selectOneCount(vo);				// count 가져올 것
		   vo.setParamsPaging(count);
		   
		   if(count != 0) {										// count가 0이 아니면 list 가져오는 부분 수행 후 model 개체에 담기
			      List<Admin> list = service.selectLodging(vo);
			      model.addAttribute("list", list);
		   } else {
			   // by pass
		   }		
		
		return "admin/lodging/lodgingList";
	}
	
	@RequestMapping(value = "/admin/lodgingView")
	public String AdminLodgingView(AdminVo vo, Model model) throws Exception {
		
		   Admin rt = service.selectOneLodging(vo);
		   model.addAttribute("rt", rt);
		   
		return "admin/lodging/lodgingView";
	}

	   @RequestMapping(value = "/admin/lodgingDel")
	   public String AdminLodgingDel(AdminVo vo) throws Exception {
		   
		   service.DeleteLodging(vo);	
		   
		   return "redirect:/admin/lodgingList"; 
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
	public String AdminMemberEdit(AdminVo vo, Model model) throws Exception {

		   Admin rt = service.selectOneMember(vo);
		   model.addAttribute("rt", rt);			
		
		return "admin/member/memberEdit";
	}
	
	@RequestMapping(value = "/admin/memberUpdt")
	public String AdminMemberUpdt(AdminVo vo, Admin dto, Model model) throws Exception {
		
		service.updateMember(dto);	
		
		return "redirect:/admin/memberView?tvmmSeq=" + dto.getTvmmSeq(); 
	}	
	
	@RequestMapping(value = "/admin/memberDel")
	public String AdminMemberDel(AdminVo vo) throws Exception {
		
		service.DeleteMember(vo);	
		
		return "redirect:/admin/memberList"; 
	}	
	
	@RequestMapping(value = "/admin/memberForm")
	public String AdminMemberForm(Model model) throws Exception {
		
		return "admin/member/memberForm";
	}
	
	@RequestMapping(value = "/admin/memberList")
	public String AdminMemberList(@ModelAttribute("vo") AdminVo vo, Model model) throws Exception {

		   int count = service.selectOneCountMember(vo);				// count 가져올 것
		   vo.setParamsPaging(count);
		   
		   if(count != 0) {										// count가 0이 아니면 list 가져오는 부분 수행 후 model 개체에 담기
				List<Admin> list = service.selectMember(vo);
				model.addAttribute("list", list);
		   } else {
			   // by pass
		   }		
		
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
	public String AdminReservationList(@ModelAttribute("vo") AdminVo vo, Model model) throws Exception {

		   int count = service.selectOneCountPayment(vo);				// count 가져올 것
		   vo.setParamsPaging(count);
		   
		   if(count != 0) {										// count가 0이 아니면 list 가져오는 부분 수행 후 model 개체에 담기
				List<Admin> list = service.selectPayment(vo);
				model.addAttribute("list", list);
		   } else {
			   // by pass
		   }		
		
		return "admin/reservation/reservationList";
	}
	
	@RequestMapping(value = "/admin/reservationView")
	public String AdminReservationView(AdminVo vo, Model model) throws Exception {
		
		   Admin rt = service.selectOnePayment(vo);
		   model.addAttribute("rt", rt);		
		
		return "admin/reservation/reservationView";
	}
	
	@RequestMapping(value = "/admin/reservationDel")
	public String AdminReservationDel(AdminVo vo) throws Exception {
		
		service.DeletePayment(vo);	
		
		return "redirect:/admin/reservationList"; 
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
	
	//login & logout---------------------------------------------------------------------------
		@ResponseBody
		@RequestMapping(value = "/admin/loginProc")
		public Map<String, Object> loginProc(Admin dto, HttpSession httpSession) throws Exception {
			Map<String, Object> returnMap = new HashMap<String, Object>();

			
			Admin rtMember = service.selectOneLogin(dto);
			
			if(rtMember != null)  {
				System.out.println(rtMember.getTvmmAdminNy());
				if(rtMember.getTvmmAdminNy() == 1) {
					httpSession.setAttribute("adminSessUserType","어드민");
					httpSession.setAttribute("adminSessName", rtMember.getTvmmName());
					httpSession.setAttribute("adminSessEmail", rtMember.getTvmmEmailAccount());

					returnMap.put("rt", "success");
				}else {
					returnMap.put("rt","notAdmin");
				}
				
			} else {
				
				returnMap.put("rt", "fail");
			}
			return returnMap;
			
		}
		
		
		@ResponseBody
		@RequestMapping(value = "/admin/logoutProc")
		public Map<String, Object> logOutProc(Admin dto, HttpSession httpSession) throws Exception {
			Map<String, Object> returnMap = new HashMap<String, Object>();
			
			
			httpSession.invalidate();
			
			returnMap.put("rt", "success");
			
			return returnMap;
			
			
		}
	
		//login & logout end ---------------------------------------------------------------------------
}
