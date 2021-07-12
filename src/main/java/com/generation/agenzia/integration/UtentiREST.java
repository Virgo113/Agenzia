package com.generation.agenzia.integration;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.generation.agenzia.entities.Utente;
import com.generation.agenzia.service.UtentiService;

@RestController
@RequestMapping("/admin/api/utenti")
public class UtentiREST {

	@Autowired
	private UtentiService us;
	
	@GetMapping("")
	List<Utente> utenti(){
		return us.findUtenti();
	}
	
	@GetMapping("/{id}")
	Utente utenteId(@PathVariable("id") int id) {
		return us.findUtenteById(id);
	}
	
	
	
	
	
	
	
	
}
