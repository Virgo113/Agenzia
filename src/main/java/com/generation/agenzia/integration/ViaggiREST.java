package com.generation.agenzia.integration;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.generation.agenzia.entities.Viaggio;
import com.generation.agenzia.service.ViaggiService;

@RestController
@RequestMapping("/api/viaggi")
public class ViaggiREST {

	@Autowired
	private ViaggiService vs;
	
	@GetMapping("")
	List<Viaggio> viaggi(){
		return vs.findViaggi();
	}
	
	@GetMapping("/{id}")
	Viaggio viaggio(@PathVariable("id") int id) {
		return vs.findViaggioById(id);
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
