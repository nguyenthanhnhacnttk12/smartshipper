package com.nguyenthanhnha.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.nguyenthanhnha.entities.Account;
import com.nguyenthanhnha.entities.Product;
import com.nguyenthanhnha.service.AccountService;
import com.nguyenthanhnha.service.ProductService;
import com.nguyenthanhnha.service.ThongkeindexService;

@Controller
@RequestMapping(value="/user")
public class UserController {

	@Autowired
	private ProductService productService;
	
	@Autowired
	private AccountService accountService;
	
	@Autowired
	private ThongkeindexService thongkeindexService;
	

	
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView index(HttpServletRequest request,	
	HttpServletResponse response) {
		HttpSession session = request.getSession();
		ModelAndView model = new ModelAndView("/User");
		model.addObject("list", accountService.findAll());
		model.addObject("addproductform",new Product());
		model.addObject("listproduct", productService.findByName(session.getAttribute("users").toString()));
		System.out.println("a"+productService.findByName(session.getAttribute("users").toString()));
		model.addObject("updateform",  accountService.find(session.getAttribute("id").toString()));
		
		
		
	        return model;
	}
	
	@RequestMapping(value="/updateproduct/{id}",method = RequestMethod.GET)
	public ModelAndView update(@PathVariable("id") String id) {
		ModelAndView model = new ModelAndView("/updateproduct");
		model.addObject("updateproduct", productService.findById(id));
		
		return model;
		
	}
	
	@RequestMapping(value="/delete/{id}",method = RequestMethod.GET)
	public String delete(@PathVariable("id") String id) {
		
		productService.delete(id);
			
		return "redirect:/user";
	}
	
	
	@RequestMapping(value="/updateaccount/{id}",method = RequestMethod.POST)
	public String saveacc(@ModelAttribute("updateform") Account account,ModelMap model,
			HttpServletRequest request, HttpServletResponse response,
			@PathVariable("id") String id) {
		System.out.println(id);
		if(id != null && !id.trim().equals("")) {
	
					System.out.println(id);
					accountService.update(account);
	
		}	
		
		return "redirect:/user";
		
	}
	
	@RequestMapping(value="/addproduct",method = RequestMethod.POST)
	public String addproduct(@ModelAttribute("addproductform") Product product,ModelMap model,
			HttpServletRequest request, HttpServletResponse response) {
					productService.add(product);
					thongkeindexService.updatedonhang(1);
		return "redirect:/user";
		
	}
	
	
	
	@RequestMapping(value="/saveproduct/{id}",method = RequestMethod.POST)
	public String saveproduct(@ModelAttribute("updateproduct") Product product,ModelMap model,
			HttpServletRequest request, HttpServletResponse response
			,@PathVariable("id") String id) {
		
		
					
					System.out.println(product.getName());
					productService.update(product);
	
	
		
		return "redirect:/user";
		
	}
	
}
