package com.servletscinema.model;

import javax.persistence.*;

@Entity
public class Film {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String Titre;
    private String Description;
    private String Affiche;

/*    @ManyToOne
    @JoinColumn(name = "genre")
    private Genre genre;*/

    public Film(){}

    public Film(String titre, String description){
        this.Titre = titre;
        this.Description = description;
    }

    public Film(int id, String titre, String description, String affiche){
        this.id = id;
        this.Titre = titre;
        this.Description = description;
        this.Affiche = affiche;
    }

    public int getId() {
        return id;
    }

    public String getTitre() {
        return Titre;
    }

    public void setTitre(String titre) {
        Titre = titre;
    }

    public String getDescription() {
        return Description;
    }

    public void setDescription(String description) {
        Description = description;
    }

    public String getAffiche() {
        return Affiche;
    }

    public void setAffiche(String affiche) {
        Affiche = affiche;
    }

/*    public Genre getGenre() {
        return genre;
    }

    public void setGenre(Genre genre) {
        this.genre = genre;
    }*/
}