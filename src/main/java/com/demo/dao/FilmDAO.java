package com.demo.dao;

import com.demo.model.Acteur;
import com.demo.model.Film;
import com.demo.util.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.query.Query;

import java.sql.Connection;
import java.util.List;

public class FilmDAO {

    Connection con = null;

    public List getFilms() {
        Session session = (Session) HibernateUtil.getSessionFactory().openSession();
        Query<Film> query =   session.createQuery("from Film" ,Film.class);
        List<Film> films = query.getResultList();
        return (films);
    }
}
