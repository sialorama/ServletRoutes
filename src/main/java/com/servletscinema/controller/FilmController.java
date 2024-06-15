package com.servletscinema.controller;

import com.servletscinema.dao.FilmDAO;
import com.servletscinema.model.Film;

import java.util.List;

public class FilmController {


    FilmDAO filmDao = new FilmDAO();

    public List<Film> getFilms() {
        List<Film> films = filmDao.getFilms();
        return films;
    }
}
