package com.skilldistillery.film.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.film.data.FilmDAO;
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

	@RequestMapping("keyword.do")
	public ModelAndView sendToKeywordPage() {
		ModelAndView mv = new ModelAndView();

		mv.setViewName("WEB-INF/views/keyword.jsp");

		return mv;
	}
	
	@RequestMapping("readFilmByKeyword.do")
	public ModelAndView readFilmByKeyword(String keyword) {
		ModelAndView mv = new ModelAndView();
		List<Film> films = dao.findFilmByKeyword(keyword);
		
		mv.addObject("films", films);
		mv.setViewName("WEB-INF/views/keywordResults.jsp");

		return mv;
	}

	@RequestMapping("create.do")
	public ModelAndView sendToCreatePage() {
		ModelAndView mv = new ModelAndView();

		mv.setViewName("WEB-INF/views/create.jsp");

		return mv;
	}

	@RequestMapping(path = "createFilm.do", method = RequestMethod.POST)
	public ModelAndView createFilm(Film film) {

		// TODO finish implementation
		Film createdFilm = dao.createFilm(film);

		ModelAndView mv = new ModelAndView();
		mv.addObject("film", createdFilm);

		mv.setViewName("WEB-INF/views/results.jsp");

		return mv;
	}

	@RequestMapping(path = "readFilm.do", method = RequestMethod.GET)
	public ModelAndView readFilm(int id) {

		ModelAndView mv = new ModelAndView();

		Film film = dao.findFilmById(id);
		mv.addObject("film", film);
		mv.setViewName("WEB-INF/views/results.jsp");

		return mv;
	}

	@RequestMapping(path = "update.do", method = RequestMethod.POST)
	public ModelAndView sendToUpdatePage(int id) {

		// TODO finish implementation
		Film film = dao.findFilmById(id);
		ModelAndView mv = new ModelAndView();
		mv.addObject("film", film);
		mv.setViewName("WEB-INF/views/update.jsp");

		return mv;
	}

	@RequestMapping(path = "updateFilm.do", method = RequestMethod.POST)
	public ModelAndView updateFilm(int id, String title, String desc, short releaseYear, int rentDur, int length,
			double repCost) {

		// TODO finish implementation
		Film film = dao.findFilmById(id);
		film.setTitle(title);
		film.setDesc(desc);
		film.setReleaseYear(releaseYear);
		film.setRentDur(rentDur);
		film.setLength(length);
		film.setRepCost(repCost);

		boolean success = dao.updateFilm(film);
		Film updatedFilm = dao.findFilmById(id);
		ModelAndView mv = new ModelAndView();
		mv.addObject("film", film);
		mv.addObject("success", success);
		mv.setViewName("WEB-INF/views/deleteResult.jsp");

		return mv;
	}

	@RequestMapping("deleteFilm.do")
	public ModelAndView deleteFilm(int id) {

		// TODO finish implementation

		boolean success = dao.deleteFilm(dao.findFilmById(id));

		ModelAndView mv = new ModelAndView();
		mv.addObject("success", success);
		mv.setViewName("WEB-INF/views/deleteResult.jsp");

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
