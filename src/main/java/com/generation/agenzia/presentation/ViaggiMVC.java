package com.generation.agenzia.presentation;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.generation.agenzia.entities.Viaggio;
import com.generation.agenzia.service.ViaggiService;

@Controller
@RequestMapping("/mvc/viaggi/")
public class ViaggiMVC {

	@Autowired
	private ViaggiService vs;
	
	@RequestMapping("")
	public String elenco(Model m) {
		List<Viaggio> viaggi = vs.findViaggi();
		
		m.addAttribute("viaggi", viaggi);
		return "elenco";
	}
	
	
	@RequestMapping("/{id}")
	public String viaggio(@PathVariable("id") int id, Model m) {
		Viaggio v = vs.findViaggioById(id);
		
		m.addAttribute("viaggio", v);
//		System.out.println(v);
		return "dettaglio";
	}
	
	
	
	
	@RequestMapping("/{id}/pagamento")
	public String pagamento(@PathVariable("id") int id, Model m) {
		Viaggio v = vs.findViaggioById(id);
		
		m.addAttribute("viaggio", v);

		return "pagamento";
	}
	
	
	
	
	
	
	
	
}
