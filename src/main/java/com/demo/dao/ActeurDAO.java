package com.demo.dao;

import com.demo.model.Acteur;
import com.demo.util.HibernateUtil;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

public class ActeurDAO {

    Connection con = null;

    // Example method to get database connection
    Session session = (Session) HibernateUtil.getSessionFactory().openSession();

    public List getActeurs() {
        Session session = (Session) HibernateUtil.getSessionFactory().openSession();
        Query<Acteur> query = session.createQuery("from Acteur", Acteur.class);
        List<Acteur> acteurs = query.getResultList();
        return (acteurs);
    }

    public Acteur getActeur(int id) {
        Session session = (Session) HibernateUtil.getSessionFactory().openSession();
        return (session.get(Acteur.class, id));
    }

    public void addActeur(Acteur acteur) {
        Transaction transaction = null;
    try (Session session = HibernateUtil.getSessionFactory().openSession()) {
        // Start a transaction
        transaction = session.beginTransaction();

        // Save the acteur object
        session.save(acteur);

        // Commit the transaction
        transaction.commit();

        System.out.println("L'acteur a été ajouté avec succès!");
    } catch (Exception ex) {
        if (transaction != null) {
            transaction.rollback();
        }
        ex.printStackTrace();
    }
    }
}





