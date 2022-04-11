package com.cher.omikujiform.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MainController {

	@RequestMapping("/omikuji")
	public String form() {
		return "index.jsp";
	}
	
	@RequestMapping(value="/create", method=RequestMethod.POST)
	public String create(HttpSession session,
			@RequestParam(value= "num") int num,
			@RequestParam(value= "city") String city,
			@RequestParam(value= "person") String person,
			@RequestParam(value= "endeavor") String endeavor,
			@RequestParam(value= "livingThing") String livingThing,
			@RequestParam(value= "saying") String saying) {
		session.setAttribute("num",  num);
		session.setAttribute("city",  city);
		session.setAttribute("person",  person);
		session.setAttribute("endeavor",  endeavor);
		session.setAttribute("livingThing",  livingThing);
		session.setAttribute("saying",  saying);
		System.out.println(num + city);
		
		return "redirect:/dashboard";
		
	}
	
	@RequestMapping("/dashboard")
	public String show(HttpSession session, Model model) {
		return "show.jsp";
	}

}

