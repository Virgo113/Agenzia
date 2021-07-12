package com.generation.agenzia.repos;

import org.springframework.data.jpa.repository.JpaRepository;

import com.generation.agenzia.entities.Utente;

public interface UtenteDAO extends JpaRepository<Utente, Integer> {

}
