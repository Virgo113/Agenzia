package com.generation.agenzia.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;


@Entity
@Table(name= "viaggi")
public class Viaggio {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@NotNull
	private String destinazione, descrizione;
	@Min(2)
	private int durata;
	private double prezzo;
	
	
	
	public Viaggio() {	}
	

	public Viaggio(String destinazione, String descrizione, int durata,
			double prezzo) {
		
		this.destinazione = destinazione;
		this.descrizione = descrizione;
		this.durata = durata;
		this.prezzo = prezzo;
	}





	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	
	
	public String getDestinazione() {
		return destinazione;
	}
	public void setDestinazione(String destinazione) {
		this.destinazione = destinazione;
	}
	
	
	
	public String getDescrizione() {
		return descrizione;
	}
	public void setDescrizione(String descrizione) {
		this.descrizione = descrizione;
	}
	
	
	
	
	public int getDurata() {
		return durata;
	}
	public void setDurata(int durata) {
		this.durata = durata;
	}
	
	
	
	
	
	public double getPrezzo() {
		return prezzo;
	}
	public void setPrezzo(double prezzo) {
		this.prezzo = prezzo;
	}


	
	
	
	
	
	
	@Override
	public String toString() {
		return "Viaggio [id=" + id + ", destinazione=" + destinazione
				+ ", descrizione=" + descrizione + ", durata=" + durata
				+ ", prezzo=" + prezzo + "]";
	}
	
	
}
