package com.mul.Healthygym.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mul.Healthygym.dto.CmtDto;
import com.mul.Healthygym.service.CmtService;

@Controller
public class CmtController {

	@Autowired
	CmtService service;


	@RequestMapping(value = "cmt.do", method = RequestMethod.GET)
	public String cmt(Model model) {
		String go = "cmt";
		model.addAttribute("go",go);

		String type = "댓글";
		model.addAttribute("type",type);
		
		List<CmtDto> cmt = service.cmtList();
		model.addAttribute("cmt", cmt);
		
		return "cmt";
	}
	
	@RequestMapping(value = "delCmt.do", method = RequestMethod.POST)
	public String delCmt(Model model,CmtDto dto) {
		String msg ="";
		boolean isS =service.delCmt(dto);
		if(isS) {
			msg = "YES";		// 숨김성공
		}else {
			msg = "NO"; 		// 숨김실패
		}

		model.addAttribute("delCmt",msg);
		
		return "message";		
	}
	@RequestMapping(value = "showCmt.do", method = RequestMethod.POST)
	public String showCmt(Model model,CmtDto dto) {
		String msg ="";
		boolean isS = service.showCmt(dto);
		if(isS) {
			msg = "YES";		// 노출성공
		}else {
			msg = "NO"; 		// 노출실패
		}
		
		model.addAttribute("showCmt",msg);
		
		return "message";		
	}
	
}
