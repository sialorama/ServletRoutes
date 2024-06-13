package com.demo.controller;

import com.demo.dao.ActeurDAO;
import com.demo.dao.FilmDAO;
import com.demo.model.Acteur;
import com.demo.model.Film;

import java.util.List;

public class FilmController {


    FilmDAO filmDao = new FilmDAO();

    public List<Film> getFilms() {
        List<Film> films = filmDao.getFilms();
        return films;
    }
}
