package com.example.homeautomation;

import java.time.LocalDateTime;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

	@Autowired
	EarthQuakeRepo earthQuakeRepo;
	LocalDateTime timePoint;
	
	
	@GetMapping("/earthquakeDetected")
	@ResponseBody
	public String earthquakeDetected()
	{
		LocalDateTime date = LocalDateTime.now();
		Earthquake eq = new Earthquake();
		eq.setDescription("Earthquake Detected");
		eq.setDate(date);
		earthQuakeRepo.save(eq);
		return "Recorded";
			
	}
	
	@GetMapping("/earthquake")
	public ModelAndView earthquake()
	{
		ModelAndView mv = new ModelAndView("earthquakeView");
		int id = earthQuakeRepo.getMaxId();
		mv.addObject("earthquake", earthQuakeRepo.getById(id));
		return mv;	
	}
	
	@GetMapping("/earthquakes")
	public ModelAndView earthquakes()
	{
		ModelAndView mv = new ModelAndView("earthquakes");
		mv.addObject("earthquakes", earthQuakeRepo.findAll()) ;
		return mv;
	}
	
	
}
