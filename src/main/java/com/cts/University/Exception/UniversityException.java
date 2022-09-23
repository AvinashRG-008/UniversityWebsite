package com.cts.University.Exception;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

@ControllerAdvice
public class UniversityException {



	@ExceptionHandler(Exception.class)
	public ModelAndView handleException(Exception ex) {

		ModelAndView model = new ModelAndView();
		model.addObject("errMsg", "Invalid credentials");
		model.setViewName("user_forgotuserid");
		return model;

	}
}
