package com.generation.agenzia.integration;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.generation.agenzia.entities.Prenotazioni;
import com.generation.agenzia.service.PrenotazioniService;

@RestController
@RequestMapping("/admin/api/prenotazioni")
public class PrenotazioniREST {

	@Autowired
	private PrenotazioniService ps;
	
	@GetMapping("")
	List<Prenotazioni> prenotazioni(){
		return ps.findPrenotazioni();
	}
	
	@GetMapping("/{id}")
	Prenotazioni prenotazioneId(@PathVariable("id") int id) {
		return ps.findPrenotazioneById(id);
	}
	
	
	
	
	
	
}
