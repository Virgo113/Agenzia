package com.generation.agenzia.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.generation.agenzia.entities.Utente;
import com.generation.agenzia.repos.UtenteDAO;

@Service
public class UtenteServiceImpl implements UtentiService {

	@Autowired
	private UtenteDAO ud;
	
	@Override
	public List<Utente> findUtenti() {
		return ud.findAll();
	}

	@Override
	public Utente findUtenteById(int id) {
		return ud.findById(id).get();
	}

	@Override
	public Utente updUtente(Utente u) {
		return ud.save(u);
	}

	@Override
	public Utente addUtente(Utente u) {
		return ud.save(u);
	}

	@Override
	public void delUtente(Utente u) {
		ud.delete(u);
	}

	@Override
	public void delUtente(int id) {
		ud.deleteById(id);
	}

}
