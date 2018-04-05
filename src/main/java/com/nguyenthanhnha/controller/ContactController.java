package com.nguyenthanhnha.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.nguyenthanhnha.service.AccountService;

@Controller
@RequestMapping(value="/contact")
public class ContactController {
	
	@Autowired
	private AccountService accountService;
	
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView index() {
		
		ModelAndView model = new ModelAndView("/Contact");
		model.addObject("list", accountService.findAll());
		
//		model.addObject("userform", new Account());
		
		
	        return model;
	}
}
