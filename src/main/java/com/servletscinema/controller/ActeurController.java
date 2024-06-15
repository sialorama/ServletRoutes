package com.servletscinema.controller;


import com.servletscinema.dao.ActeurDAO;
import com.servletscinema.model.Acteur;

import java.util.List;

public class ActeurController {

    private ActeurDAO acteurDao = new ActeurDAO();

    public List<Acteur> getActeurs() {
        List<Acteur> acteurs = acteurDao.getActeurs();
        return acteurs;
    }

    public void addActeur(Acteur acteur) {
        acteurDao.saveActeur(acteur);
    }
}