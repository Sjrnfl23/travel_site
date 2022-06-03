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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.helpme.travel.common.contants.Constants;
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

   @RequestMapping(value = "/admin/couponMultiDel")
   public String AdminCouponMultiDel(AdminVo vo, RedirectAttributes redirectAttributes) throws Exception {
	   
		String[] checkboxSeqArray = vo.getCheckboxSeqArray();
		
		for(String checkboxSeq : checkboxSeqArray) {
			vo.setTvcpSeq(checkboxSeq);
			service.DeleteCoupon(vo);	
		}	   
	   
		redirectAttributes.addFlashAttribute("vo", vo);
	   return "redirect:/admin/couponList"; 
   }		
	   
	   
	/*---------------------------------------------------------------------------*/
	
	
	/* host--------------------------------------------------------------------*/
	
	@RequestMapping(value = "/admin/hostEdit")
	public String AdminHostEdit(AdminVo vo, Model model) throws Exception {
		
		   Admin rt = service.selectOneMember(vo);
		   model.addAttribute("rt", rt);
		   
		   Admin rt2 = service.selectOneUploaded(vo);
		   model.addAttribute("rt2", rt2);			   
		
		return "admin/host/hostEdit";
	}
	
	@RequestMapping(value = "/admin/hostUpdt")
	public String AdminHostUpdt(AdminVo vo, Admin dto, Model model) throws Exception {
		
		service.updateMember(dto);	
		
		return "redirect:/admin/hostView?tvmmSeq=" + dto.getTvmmSeq(); 
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
		   
		   Admin rt2 = service.selectOneUploaded(vo);
		   model.addAttribute("rt2", rt2);			   
		
		return "admin/host/hostView";
	}

	@RequestMapping(value = "/admin/hostDel")
	public String AdminHostDel(AdminVo vo) throws Exception {
		
		service.DeleteMember(vo);	
		
		return "redirect:/admin/hostList"; 
	}	

   @RequestMapping(value = "/admin/hostMultiDel")
   public String AdminHostMultiDel(AdminVo vo, RedirectAttributes redirectAttributes) throws Exception {
	   
		String[] checkboxSeqArray = vo.getCheckboxSeqArray();
		
		for(String checkboxSeq : checkboxSeqArray) {
			vo.setTvmmSeq(checkboxSeq);
			service.DeleteMember(vo);	
		}	   
	   
		redirectAttributes.addFlashAttribute("vo", vo);
	   return "redirect:/admin/hostList"; 
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
   
   @RequestMapping(value = "/admin/lodgingMultiDel")
   public String AdminLodgingMultiDel(AdminVo vo, RedirectAttributes redirectAttributes) throws Exception {
	   
		String[] checkboxSeqArray = vo.getCheckboxSeqArray();
		
		for(String checkboxSeq : checkboxSeqArray) {
			vo.setTvamSeq(checkboxSeq);
			 service.DeleteLodging(vo);	
		}	   
	   
		redirectAttributes.addFlashAttribute("vo", vo);
	   return "redirect:/admin/lodgingList"; 
   }	
	   
	   
	   
	
	/*---------------------------------------------------------------------------*/
	
	
	/* memberAdmin 관리자 회원정보--------------------------------------------------------------------*/

	@RequestMapping(value = "/admin/adminInfoEdit")
	public String AdminMemberEditAdmin(AdminVo vo, Model model) throws Exception {
		
		   Admin rt = service.selectOneMember(vo);
		   model.addAttribute("rt", rt);			
		
		return "admin/memberAdmin/adminInfoEdit";
	}
	

	@RequestMapping(value = "/admin/adminInfoView")
	public String AdminMemberViewAdmin(@ModelAttribute("dto")Admin dto, Model model, HttpSession httpSession) throws Exception {
		
		String adminSessSeq = String.valueOf(httpSession.getAttribute("adminSessSeq").toString());	
		dto.setTvmmSeq(adminSessSeq);
		
	   Admin rt = service.selectOneAdmin(dto);
	   model.addAttribute("rt", rt);			
		
		return "admin/memberAdmin/adminInfoView";
	}
	
	@RequestMapping(value = "/admin/adminInfoUpdt")
	public String AdminInfoUpdt(AdminVo vo, Admin dto, Model model) throws Exception {
		
		service.updateMember(dto);	
		
		return "redirect:/admin/adminInfoView?tvmmSeq=" + dto.getTvmmSeq(); 
	}	
	
	
	
	/*---------------------------------------------------------------------------*/
	/* member--------------------------------------------------------------------*/
	
	@RequestMapping(value = "/admin/memberEdit")
	public String AdminMemberEdit(AdminVo vo, Model model) throws Exception {

		   Admin rt = service.selectOneMember(vo);
		   model.addAttribute("rt", rt);	

		   Admin rt2 = service.selectOneUploaded(vo);
		   model.addAttribute("rt2", rt2);	
		   
		
		return "admin/member/memberEdit";
	}
	
	@RequestMapping(value = "/admin/memberUpdt")
	public String AdminMemberUpdt(AdminVo vo, Admin dto, Model model) throws Exception {
		
		service.updateMember(dto);	
		
		return "redirect:/admin/memberView?tvmmSeq=" + dto.getTvmmSeq(); 
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
		   
		   Admin rt2 = service.selectOneUploaded(vo);
		   model.addAttribute("rt2", rt2);	
		   
		return "admin/member/memberView";
	}
	
	@RequestMapping(value = "/admin/memberDel")
	public String AdminMemberDel(AdminVo vo) throws Exception {
		
		service.DeleteMember(vo);	
		
		return "redirect:/admin/memberList"; 
	}	
	
   @RequestMapping(value = "/admin/memberMultiDel")
   public String AdminMemberMultiDel(AdminVo vo, RedirectAttributes redirectAttributes) throws Exception {
	   
		String[] checkboxSeqArray = vo.getCheckboxSeqArray();
		
		for(String checkboxSeq : checkboxSeqArray) {
			vo.setTvmmSeq(checkboxSeq);
			service.DeleteMember(vo);	
		}	   
	   
		redirectAttributes.addFlashAttribute("vo", vo);
	   return "redirect:/admin/memberList"; 
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
	
   @RequestMapping(value = "/admin/reservationMultiDel")
   public String AdminReservationMultiDel(AdminVo vo, RedirectAttributes redirectAttributes) throws Exception {
	   
		String[] checkboxSeqArray = vo.getCheckboxSeqArray();
		
		for(String checkboxSeq : checkboxSeqArray) {
			vo.setTvpmSeq(checkboxSeq);
			service.DeletePayment(vo);		
		}	   
	   
		redirectAttributes.addFlashAttribute("vo", vo);
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
	public String AdminMainView(Admin dto, Model model) throws Exception {
		
		 Admin rt1 = service.selectOneMainView1(dto); 
		 model.addAttribute("rt1", rt1);
		 Admin rt2 = service.selectOneMainView2(dto); 
		 model.addAttribute("rt2", rt2);
		 Admin rt3 = service.selectOneMainView3(dto); 
		 model.addAttribute("rt3", rt3);
		 Admin rt4 = service.selectOneMainView4(dto); 
		 model.addAttribute("rt4", rt4);
		 Admin rt5 = service.selectOneMainView5(dto); 
		 model.addAttribute("rt5", rt5);
		 Admin rt6 = service.selectOneMainView6(dto); 
		 model.addAttribute("rt6", rt6);
		 Admin rt7 = service.selectOneMainView7(dto); 
		 model.addAttribute("rt7", rt7);
		 Admin rt8 = service.selectOneMainView8(dto); 
		 model.addAttribute("rt8", rt8);
		 Admin rt9 = service.selectOneMainView9(dto); 
		 model.addAttribute("rt9", rt9);
		 Admin rt10 = service.selectOneMainView10(dto); 
		 model.addAttribute("rt10", rt10);
		 
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
					
					httpSession.setMaxInactiveInterval( 60 * Constants.SESSION_MINUTE);	//60second * 600 = 600minute 시간지나면 로그아웃됨
					httpSession.setAttribute("adminSessUserType","어드민");
					httpSession.setAttribute("adminSessName", rtMember.getTvmmName());
					httpSession.setAttribute("adminSessEmail", rtMember.getTvmmEmailAccount());
					httpSession.setAttribute("adminSessSeq", rtMember.getTvmmSeq());

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
