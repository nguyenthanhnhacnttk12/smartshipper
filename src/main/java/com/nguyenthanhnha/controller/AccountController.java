package com.nguyenthanhnha.controller;

import java.util.List;

import javax.swing.event.ListSelectionEvent;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.nguyenthanhnha.entities.Account;
import com.nguyenthanhnha.service.AccountService;

@Controller
@RequestMapping(value="/account")
public class AccountController {
	
	@Autowired
	private AccountService accountService;

	
//	@RequestMapping(method = RequestMethod.GET)
//	public ModelAndView index() {
//		ModelAndView model = new ModelAndView("/test");
//		model.addObject("list", accountService.findAlla());
//	        return model;
//	}
	
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView index() {
		ModelAndView model = new ModelAndView("/index");
		model.addObject("list", accountService.findAll());
		
		model.addObject("userform", new Account());
	        return model;
	}
	
	@RequestMapping(value="/update/{username}",method = RequestMethod.GET)
	public ModelAndView update(@PathVariable("username") String username) {
		ModelAndView model = new ModelAndView("/index");
		model.addObject("userform", accountService.find(username));
		
		return model;
		
	}
	
	@RequestMapping(value="/save",method = RequestMethod.POST)
	public String save(@ModelAttribute("userform") Account account) {
		if(account.getUsername() != null && !account.getUsername().trim().equals("")) {
			for(Account a: accountService.findAll() )
				if(account.getUsername().equals(a.getUsername())) {
					System.out.println(account.getUsername());
					accountService.update(account);
					break;
				}else {
				accountService.add(account);
				break;
				}
		}	
		
		return "redirect:/";
		
	}
		
	@RequestMapping(value="/delete/{username}",method = RequestMethod.GET)
	public String delete(@PathVariable("username") String username) {
		
		accountService.delete(username);
			
		return "redirect:/";
	}
}
