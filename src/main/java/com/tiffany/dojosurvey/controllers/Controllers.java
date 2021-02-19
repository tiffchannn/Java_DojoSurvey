package com.tiffany.dojosurvey.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class Controllers {
	
	@RequestMapping("/")
	public String index() {
		return "index.jsp";
	}
	
	@RequestMapping(path="/submit", method=RequestMethod.POST)
	public String submitForm(@RequestParam(value="name") String name, @RequestParam(value="location") String location, @RequestParam(value="language") String language, @RequestParam(value="comment") String comment, HttpSession session) {
		session.setAttribute("name", name);
		session.setAttribute("location", location);
		session.setAttribute("language", language);
		session.setAttribute("comment", comment);
		System.out.println("Successfully submitted form!");
		return "redirect:/result";
	}
	
	@RequestMapping("/result")
	public String result(HttpSession session, Model model) {
		String name = (String) session.getAttribute("name");
		model.addAttribute("name", name);
		String location = (String) session.getAttribute("location");
		model.addAttribute("location", location);
		String language = (String) session.getAttribute("language");
		model.addAttribute("language", language);
		String comment = (String) session.getAttribute("comment");
		model.addAttribute("comment", comment);
		return "result.jsp";
	}
}
