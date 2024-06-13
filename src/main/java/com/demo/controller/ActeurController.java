package com.demo.controller;


import com.demo.dao.ActeurDAO;
import com.demo.model.Acteur;

import java.util.List;

public class ActeurController {

    ActeurDAO acteurDao = new ActeurDAO();

    public List<Acteur> getActeurs() {
        List<Acteur> acteurs = acteurDao.getActeurs();
        return acteurs;
    }
}