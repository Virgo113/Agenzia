package com.generation.agenzia.service;

import java.util.List;

import com.generation.agenzia.entities.Utente;


public interface UtentiService {

	List<Utente> findUtenti();
	Utente findUtenteById(int id);
		
	public Utente updUtente(Utente u);
	public Utente addUtente(Utente u);
	
	/**
	 * metodo per cancellare un viaggio passando in argomento il viaggio
	 * @param u utente
	 */
	public void delUtente(Utente u);
	
	/**
	 * metodo per cancellare un utente attraverso il suo id
	 * @param id id utente
	 */
	public void delUtente(int id);
	
	
	
	
	
	
	
	
	
}
