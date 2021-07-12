package com.generation.agenzia.service;

import java.util.List;

import com.generation.agenzia.entities.Viaggio;

public interface ViaggiService {

	List<Viaggio> findViaggi();
	public Viaggio findViaggioById(int id);
	
	public Viaggio updViaggio(Viaggio v);
	public Viaggio addViaggio(Viaggio v);
	
	/**
	 * metodo per cancellare un viaggio passando in argomento il viaggio
	 * @param v viaggio
	 */
	public void delViaggio(Viaggio v);
	
	/**
	 * metodo per cancellare un viaggio attraverso il suo id
	 * @param id id viaggio
	 */
	public void delViaggio(int id);
	
	
}
