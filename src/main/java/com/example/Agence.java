package com.example;

import java.io.Serializable;

public class Agence implements Serializable {
    private String nom;
    private String ville;
    private String codePostal;

    // Constructeur vide (obligatoire pour un bean JSP)
    public Agence() {}

    // Getters et Setters
    public String getNom() {
        return nom;
    }
    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getVille() {
        return ville;
    }
    public void setVille(String ville) {
        this.ville = ville;
    }

    public String getCodePostal() {
        return codePostal;
    }
    public void setCodePostal(String codePostal) {
        this.codePostal = codePostal;
    }
}
