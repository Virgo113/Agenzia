package com.generation.agenzia.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Size;

@Entity
@Table(name= "utenti_viaggio")
public class Utente {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	private String nome, cognome, email;
	@Size(min = 5, message = "la password deve essere minimo 5 caratteri")
	private String password;
	
	
	
	public Utente() {	}



	public Utente(String nome, String cognome, String email, String password) {
		this.nome = nome;
		this.cognome = cognome;
		this.email = email;
		this.password = password;
	}



	public int getId() {
		return id;
	}



	public void setId(int id) {
		this.id = id;
	}


	
	
	

	public String getNome() {
		return nome;
	}



	public void setNome(String nome) {
		this.nome = nome;
	}



	
	
	
	
	public String getCognome() {
		return cognome;
	}



	public void setCognome(String cognome) {
		this.cognome = cognome;
	}



	
	
	
	public String getEmail() {
		return email;
	}



	public void setEmail(String email) {
		this.email = email;
	}



	
	
	
	public String getPassword() {
		return password;
	}



	public void setPassword(String password) {
		this.password = password;
	}



	

	
	
	@Override
	public String toString() {
		return "Utente [id=" + id + ", nome=" + nome + ", cognome=" + cognome
				+ ", email=" + email + ", password=" + password + "]";
	}
	
	
}
