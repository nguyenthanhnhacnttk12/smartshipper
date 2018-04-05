package com.nguyenthanhnha.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.event.ListSelectionEvent;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.nguyenthanhnha.entities.Account;
import com.nguyenthanhnha.entities.Product;
import com.nguyenthanhnha.service.AccountService;
import com.nguyenthanhnha.service.ProductService;
import com.nguyenthanhnha.service.ThongkeindexService;

@Controller
@RequestMapping(value="/")

public class HomeController {
	
	@Autowired
	private AccountService accountService;
	
	@Autowired
	private ProductService productService;
	
	@Autowired
	private ThongkeindexService thongkeindexService;

	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView index(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		ModelAndView model = new ModelAndView("/index");
		model.addObject("list", accountService.findAll());
		model.addObject("thongkeindex", thongkeindexService.findAll());
		if(session.getAttribute("id")!=null) {
			model.addObject("listacc", accountService.find(session.getAttribute("id").toString()));
		}
		System.out.println( thongkeindexService.findAll());
		model.addObject("addproduct2form",new Product());
		model.addObject("userform", new Account());
		model.addObject("loginform", new Account());
		
	        return model;
	}
	
	

	
//	@RequestMapping(value="/update/{username}",method = RequestMethod.GET)
//	public ModelAndView update(@PathVariable("username") String username) {
//		ModelAndView model = new ModelAndView("/index");
//		model.addObject("userform", accountService.find(username));
//		
//		return model;
//		
//	}


	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(HttpServletRequest request, HttpServletResponse response,
	            @ModelAttribute("loginform") Account account, ModelMap mm) {
	    Account acc = accountService.login(account.getUsername(), account.getPassword());
	    
	    if (acc != null) {
	        HttpSession session = request.getSession();
	        session.setAttribute("id",acc.getId());
	
	        System.out.println(session.getAttribute("id"));
	        session.setAttribute("users", acc.getUsername());
	        session.setAttribute("fullname", acc.getFullname());
	        session.setAttribute("sodienthoai", acc.getNumberphone());
	        session.setAttribute("diachi", acc.getDiachi());
	        
	        return "redirect:/user";
	    } else {
	        mm.put("msg", "Incorrect email or password!");
	        return "redirect:/";
	   }
	}
	
	@RequestMapping(value="/save",method = RequestMethod.POST)
	public String save(@ModelAttribute("loginform") Account account,ModelMap model,HttpServletRequest request, HttpServletResponse response) {
		if(account.getUsername() != null && !account.getUsername().trim().equals("")) {
			for(Account a: accountService.findAll() ) 
				if(!account.getUsername().equals(a.getUsername())) {
//					System.out.println(account.getUsername());
//					accountService.update(account);
//					break;
//				}else {
					accountService.add(account);
					thongkeindexService.updatethanhvien(1);
					 Account acc = accountService.login(account.getUsername(), account.getPassword());
					 HttpSession session = request.getSession();
					 session.setAttribute("id",acc.getId());
					 session.setAttribute("users", acc.getUsername());
				        session.setAttribute("fullname", acc.getFullname());
				        session.setAttribute("sodienthoai", acc.getNumberphone());
				        session.setAttribute("diachi", acc.getDiachi());
					break;
				}
		}	
		
		return "redirect:/";
		
	}
		
	@RequestMapping(value="/delete/{id}",method = RequestMethod.GET)
	public String delete(@PathVariable("id") String id) {
		
		accountService.delete(id);
			
		return "redirect:/";
	}
	
	@RequestMapping(value="/logout",method = RequestMethod.GET)
	public String delete1(HttpServletRequest request, HttpServletResponse response) {
		 HttpSession session = request.getSession();
		 System.out.println(session.getAttribute("id"));
		if (session.getAttribute("users") != null) {
			accountService.logout((String)session.getAttribute("id"));
			
		}
		session.invalidate();
		return "redirect:/";
	}
	@RequestMapping(value="/addproduct2",method = RequestMethod.POST)
	public String addproduct2(@ModelAttribute("addproduct2form") Product product,ModelMap model,
			HttpServletRequest request, HttpServletResponse response) {
					System.out.println("m"+product);
					productService.add(product);
					thongkeindexService.updatedonhang(1);
		return "redirect:/";
		
	}
}
