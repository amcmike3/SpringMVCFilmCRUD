package com.skilldistillery.film.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.film.data.FilmDAO;
import com.skilldistillery.film.entities.Actor;
import com.skilldistillery.film.entities.Film;

@Controller
public class FilmController {
	
	@Autowired
	private FilmDAO dao;
	
	
	@RequestMapping("home.do")
	public ModelAndView home() {
		
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("WEB-INF/views/home.jsp");
		
		return mv;
	}
	@RequestMapping("createFilm.do")
	public ModelAndView createFilm(Film film) {
		
		//TODO finish implementation
		Film createdFilm = dao.createFilm(film);
		ModelAndView mv = new ModelAndView();
		mv.addObject(createdFilm);
		mv.setViewName("WEB-INF/views/results.jsp");
		
		return mv;
	}
	@RequestMapping("readFilm.do")
	public ModelAndView readFilm(int id) {
		
		//TODO finish implementation
		
		Film film = dao.findFilmById(id);
		ModelAndView mv = new ModelAndView();
		mv.addObject(film);
		mv.setViewName("WEB-INF/views/results.jsp");
		
		return mv;
	}
	@RequestMapping("updateFilm.do")
	public ModelAndView updateFilm(Film film) {
		
		//TODO finish implementation
		
		boolean success = dao.updateFilm(film);
		ModelAndView mv = new ModelAndView();
		mv.addObject(success);
		mv.setViewName("WEB-INF/views/results.jsp");
		
		return mv;
	}
	@RequestMapping("deleteFilm.do")
	public ModelAndView deleteFilm(Film film) {
		
		//TODO finish implementation
		
		boolean success = dao.deleteFilm(film);
		ModelAndView mv = new ModelAndView();
		mv.addObject(success);
		mv.setViewName("WEB-INF/views/results.jsp");
		
		return mv;
	}
//	@RequestMapping("createActor.do")
//	public ModelAndView createActor(Actor actor) {
//		
//		//TODO finish implementation
//		
//		dao.createActor(actor);
//		ModelAndView mv = new ModelAndView();
//		mv.setViewName("WEB-INF/views/results.jsp");
//		
//		return mv;
//	}
//	@RequestMapping("readActor.do")
//	public ModelAndView readActor(int id) {
//		
//		//TODO finish implementation
//		
//		dao.findActorById(id);
//		ModelAndView mv = new ModelAndView();
//		mv.setViewName("WEB-INF/views/results.jsp");
//		
//		return mv;
//	}
//	@RequestMapping("updateActor.do")
//	public ModelAndView updateActor(Actor actor) {
//		
//		//TODO finish implementation
//		
//		dao.updateActor(actor);
//		ModelAndView mv = new ModelAndView();
//		mv.setViewName("WEB-INF/views/results.jsp");
//		
//		return mv;
//	}
//	@RequestMapping("deleteAcotor.do")
//	public ModelAndView deleteActor(Actor actor) {
//		
//		//TODO finish implementation
//		
//		dao.deleteActor(actor);
//		ModelAndView mv = new ModelAndView();
//		mv.setViewName("WEB-INF/views/results.jsp");
//		
//		return mv;
//	}
//	

}
