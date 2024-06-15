package com.servletscinema.dao;

import com.servletscinema.model.Acteur;
import com.servletscinema.util.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import java.sql.Connection;
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

    public Acteur getActeurById(int id) {
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
    // Ajouter un acteur à la base de données avec la methode saveActeur
    public void saveActeur(Acteur acteur) {
        Transaction transaction = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            transaction = session.beginTransaction();
            session.save(acteur);
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
    }
}





