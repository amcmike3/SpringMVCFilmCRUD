package com.skilldistillery.film.data;

import java.util.List;

import com.skilldistillery.film.entities.Actor;
import com.skilldistillery.film.entities.Film;

public interface FilmDAO {

	public Actor findActorById(int actorId);
	public boolean deleteActor(Actor actor);
	public boolean deleteFilm(Film film);
	public boolean updateActor(Actor actor);
	public Actor createActor(Actor actor);
	public Film createFilm(Film film);
	public List<Film> findFilmsByActorId(int actorId);
	public Film findFilmById(int filmId);
	public List<Film> findFilmByKeyword(String keyword);
	public List<Actor> findActorsByFilmId(int filmId);
	public String findFilmGenreByFilmId(int filmId);
	public String findFilmLanguage(int filmId);
	public boolean updateFilm(Film film);

}
