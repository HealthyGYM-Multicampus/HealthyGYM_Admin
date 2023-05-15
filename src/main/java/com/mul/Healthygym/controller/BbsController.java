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

import com.mul.Healthygym.dto.BbsDto;
import com.mul.Healthygym.service.BbsService;

@Controller
public class BbsController {

	@Autowired
	BbsService service;


	@RequestMapping(value = "bbs.do", method = RequestMethod.GET)
	public String bbs(Model model) {
		String go = "bbs";
		model.addAttribute("go",go);

		String type = "게시판";
		model.addAttribute("type",type);
		
		List<BbsDto> bbs = service.bbsList();
		model.addAttribute("bbs", bbs);
		
		return "bbs";
	}
	
	@RequestMapping(value = "delBbs.do", method = RequestMethod.POST)
	public String delBbs(Model model,BbsDto dto) {
		String msg ="";
		boolean isS =service.delBbs(dto);
		if(isS) {
			msg = "YES";		// 숨김성공
		}else {
			msg = "NO"; 		// 숨김실패
		}

		model.addAttribute("delBbs",msg);
		
		return "message";		
	}
	@RequestMapping(value = "showBbs.do", method = RequestMethod.POST)
	public String showPps(Model model,BbsDto dto) {
		String msg ="";
		boolean isS = service.showBbs(dto);
		if(isS) {
			msg = "YES";		// 노출성공
		}else {
			msg = "NO"; 		// 노출실패
		}
		
		model.addAttribute("showBbs",msg);
		
		return "message";		
	}
	
	@RequestMapping(value = "bbs2.do", method = RequestMethod.GET)
	public String bbs2(Model model) {
		String go = "bbs2";
		model.addAttribute("go",go);

		String type = "바디갤러리";
		model.addAttribute("type",type);
		
		List<BbsDto> bbs = service.bbs2();
		model.addAttribute("bbs", bbs);
		return "bbs2";
	}
	
	@RequestMapping(value = "bbs3.do", method = RequestMethod.GET)
	public String bbs3(Model model) {
		String go = "bbs3";
		model.addAttribute("go",go);

		String type = "정보게시판";
		model.addAttribute("type",type);
		
		List<BbsDto> bbs = service.bbs3();
		model.addAttribute("bbs", bbs);
		return "bbs3";
	}
	
	@RequestMapping(value = "bbs4.do", method = RequestMethod.GET)
	public String bbs4(Model model) {
		String go = "bbs4";
		model.addAttribute("go",go);

		String type = "자유게시판";
		model.addAttribute("type",type);
		
		List<BbsDto> bbs = service.bbs4();
		model.addAttribute("bbs", bbs);
		return "bbs4";
	}
	
	@RequestMapping(value = "bbs11.do", method = RequestMethod.GET)
	public String bbs11(Model model) {
		String go = "bbs11";
		model.addAttribute("go",go);

		String type = "식단게시판";
		model.addAttribute("type",type);
		
		List<BbsDto> bbs = service.bbs11();
		model.addAttribute("bbs", bbs);
		return "bbs11";
	}
	
	@RequestMapping(value = "bbs5.do", method = RequestMethod.GET)
	public String bbs5(Model model) {
		String go = "bbs5";
		model.addAttribute("go",go);

		String type = "운동메이트";
		model.addAttribute("type",type);
		
		List<BbsDto> bbs = service.bbs5();
		model.addAttribute("bbs", bbs);
		return "bbs5";
	}
	
	@RequestMapping(value = "bbs10.do", method = RequestMethod.GET)
	public String bbs10(Model model) {
		String go = "bbs10";
		model.addAttribute("go",go);

		String type = "식단메이트";
		model.addAttribute("type",type);
		
		List<BbsDto> bbs = service.bbs10();
		model.addAttribute("bbs", bbs);
		return "bbs10";
	}
	
	@RequestMapping(value = "bbsReport.do", method = RequestMethod.GET)
	public String bbsReport(Model model) {
		String go = "bbsReport";
		model.addAttribute("go",go);

		String type = "신고된 게시글";
		model.addAttribute("type",type);
		
		List<BbsDto> bbs = service.bbsReport();
		model.addAttribute("bbs", bbs);
		return "bbsReport";
	}
	
}
