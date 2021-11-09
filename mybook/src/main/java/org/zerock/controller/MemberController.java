package org.zerock.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.zerock.domain.MemberDTO;
import org.zerock.service.MemberService;

@Controller
@RequestMapping(value="/member", method=RequestMethod.GET)
public class MemberController {
	@Autowired
	MemberService mservice;
	
	@GetMapping("/login")
	public void loginGet() {
		
	}
	
	@PostMapping("/loginPost")
	public String loginPost(MemberDTO mdto, HttpSession session) {
		
		MemberDTO dto = mservice.loginPost(mdto);
		
		session.setAttribute("aaaa", dto);
		
		if(session.getAttribute("aaaa")!=null) {
			
			return "redirect:/";
			
		} else {
			
			return "redircet:/member/login";
		}
	}
	
	@GetMapping("/logout")
	public String logoutPost(HttpSession session) {
		session.removeAttribute("aaaa");
		
		return "redirect:/";
	}
	
	
	
	
	@GetMapping("/mList")
	public void getList(Model model) {
		model.addAttribute("mlist", mservice.list());
	}
	
	@GetMapping("/mDetail")
	public void getDetail(MemberDTO mdto, Model model) {
		model.addAttribute("mdetail", mservice.detail(mdto));
	}
	
	@PostMapping("/mModify")
	public void postModify(MemberDTO mdto, Model model) {
		System.out.println("modify = " + mdto);
		model.addAttribute("modify", mservice.detail(mdto));
	}
	@PostMapping("/mModifyPost")
	public String postModifyPost(MemberDTO mdto) {
		mservice.modify(mdto);
		return "redirect:/member/mDetail?id=" + mdto.getId();
	}
	
	@PostMapping("/mRemove")
	public String postRemove(MemberDTO mdto, HttpSession session) {
		mservice.remove(mdto);
		session.removeAttribute("aaaa");
		return "redirect:/";
	}
	
	
	
	
	
	@PostMapping("/write")
	public void getWrite() {
		
	}
	@PostMapping("/writePost")
	public String postWrite(MemberDTO mdto) {
		mservice.member(mdto);
		return "redirect:/";
	}
}

