package com.generation.agenzia.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Prenotazioni {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	private int utente_id, viaggio_id, partecipanti;
	

	public Prenotazioni() {	}


	public Prenotazioni(int utente_id, int viaggio_id, int partecipanti) {
		this.utente_id = utente_id;
		this.viaggio_id = viaggio_id;
		this.partecipanti = partecipanti;
	}


	
	
	
	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}




	public int getUtente_id() {
		return utente_id;
	}
	
	
	public void setUtente_id(int utente_id) {
		this.utente_id = utente_id;
	}



	public int getViaggio_id() {
		return viaggio_id;
	}
	
	
	public void setViaggio_id(int viaggio_id) {
		this.viaggio_id = viaggio_id;
	}

	
	
	public int getPartecipanti() {
		return partecipanti;
	}
	
	
	public void setPartecipanti(int partecipanti) {
		this.partecipanti = partecipanti;
	}
	
	
	
	
	
	
	
	
	@Override
	public String toString() {
		return "Prenotazioni [id=" + id + ", utente_id=" + utente_id
				+ ", viaggio_id=" + viaggio_id + ", partecipanti="
				+ partecipanti + "]";
	}
	
	
	
}
