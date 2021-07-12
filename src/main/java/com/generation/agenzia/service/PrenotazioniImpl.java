package com.generation.agenzia.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.generation.agenzia.entities.Prenotazioni;
import com.generation.agenzia.repos.PrenotazioniDAO;

@Service
public class PrenotazioniImpl implements PrenotazioniService{
	
	@Autowired
	private PrenotazioniDAO pd;

	@Override
	public List<Prenotazioni> findPrenotazioni() {
		return pd.findAll();
	}

	@Override
	public Prenotazioni findPrenotazioneById(int id) {
		return pd.findById(id).get();
	}

	@Override
	public Prenotazioni updPrenotazione(Prenotazioni p) {
		return pd.save(p);
	}

	@Override
	public Prenotazioni addPrenotazione(Prenotazioni p) {
		return pd.save(p);
	}

	@Override
	public void delPrenotazione(Prenotazioni p) {
		pd.delete(p);
	}

	@Override
	public void delPrenotazione(int id) {
		pd.deleteById(id);
	}

}
