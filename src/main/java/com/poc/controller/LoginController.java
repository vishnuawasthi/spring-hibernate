package com.poc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.poc.dto.RegistrationDTO;

@Controller
public class LoginController {

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView login() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("index");
		return modelAndView;

	}

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public ModelAndView register() {
		ModelAndView modelAndView = new ModelAndView();
		RegistrationDTO dto = new RegistrationDTO();
		modelAndView.addObject("registrationForm", dto);
		modelAndView.setViewName("registration");
		return modelAndView;
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public ModelAndView doRegister(@ModelAttribute("registrationForm") RegistrationDTO dto, BindingResult result) {
		ModelAndView modelAndView = new ModelAndView();

		if (result.hasErrors()) {
			modelAndView.setViewName("registration");
			modelAndView.addObject("registrationForm", dto);
			return modelAndView;
		}

		modelAndView.addObject("registrationForm", new RegistrationDTO());

		modelAndView.setViewName("registration");
		return modelAndView;
	}

}
