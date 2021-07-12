package com.generation.agenzia.service;

import java.util.List;

import com.generation.agenzia.entities.Prenotazioni;

public interface PrenotazioniService {

	List<Prenotazioni> findPrenotazioni();
	public Prenotazioni findPrenotazioneById(int id);
	
	
	Prenotazioni updPrenotazione(Prenotazioni p);
	Prenotazioni addPrenotazione(Prenotazioni p);
	
	/**
	 * metodo per cancellare una Prenotazione passando in argomento la Prenotazione
	 * @param p prenotazione
	 */
	public void delPrenotazione(Prenotazioni p);
	
	/**
	 * metodo per cancellare una Prenotazione attraverso il suo id
	 * @param id prenotazione
	 */
	public void delPrenotazione(int id);
}
