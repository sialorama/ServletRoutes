package com.demo.dao;

import com.demo.model.Acteur;
import com.demo.util.HibernateUtil;

import org.hibernate.Session;
import org.hibernate.query.Query;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

public class ActeurDAO {

    Connection con = null;

    public List getActeurs() {
        Session session = (Session) HibernateUtil.getSessionFactory().openSession();
        Query<Acteur> query =   session.createQuery("from Acteur" ,Acteur.class);
        List<Acteur> acteurs = query.getResultList();
        return (acteurs);
    }

    public Acteur getActeur(int id) {
        Session session = (Session) HibernateUtil.getSessionFactory().openSession();
        return (session.get(Acteur.class,id));
    }

    public void addActeur(Acteur acteur) {
        // insert query
        // using prepared statements
        PreparedStatement preparedStatement =null;
        try {
            String query = "INSERT INTO acteur (nom,prenom,photo) VALUES (?,?,?)";
            con.setAutoCommit(false);
            PreparedStatement pst;
            pst = con.prepareStatement(query);
            pst.setString(1, acteur.getNom());
            pst.setString(2, acteur.getPhoto());
            pst.setString(3,acteur.getPhoto());

            pst.executeUpdate(); // executeUpdate is used for the insertion of the data
            con.commit();
            System.out.println("L'acteur a été ajouté avec succès!");
        } catch (Exception ex) {
            try {
                con.rollback();
            } catch(SQLException e) {
                e.printStackTrace();
            }
        }  finally {
            try {
                preparedStatement.close();
                con.close();
            } catch(Exception e) {}
        }
    }
}





