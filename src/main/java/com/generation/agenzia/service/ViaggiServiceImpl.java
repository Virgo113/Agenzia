package com.generation.agenzia.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.generation.agenzia.entities.Viaggio;
import com.generation.agenzia.repos.ViaggiDAO;

@Service
public class ViaggiServiceImpl implements ViaggiService {
	
	@Autowired
	private ViaggiDAO vd;
	
	

	@Override
	public List<Viaggio> findViaggi() {
		return vd.findAll();
	}

	@Override
	public Viaggio findViaggioById(int id) {
//		return vd.getById(id);
		return vd.findById(id).get();
	}

	@Override
	public Viaggio updViaggio(Viaggio v) {
		
		return vd.save(v);
	}

	@Override
	public Viaggio addViaggio(Viaggio v) {
		return vd.save(v);
	}

	@Override
	public void delViaggio(Viaggio v) {
		vd.delete(v);
	}

	@Override
	public void delViaggio(int id) {
		vd.deleteById(id);

	}

}
