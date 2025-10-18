package com.example;

import jakarta.servlet.ServletContext;
import java.util.ArrayList;
import java.util.List;

public class VisiteursBean {
    private List<String> liste;

    public VisiteursBean() {
        liste = new ArrayList<>();
    }

    public void init(ServletContext context) {
        List<String> visiteurs = (List<String>) context.getAttribute("visiteurs");
        if (visiteurs == null) {
            visiteurs = new ArrayList<>();
            context.setAttribute("visiteurs", visiteurs);
        }
        this.liste = visiteurs;
    }

    public void ajouter(String nom) {
        if (nom != null && !nom.trim().isEmpty()) {
            liste.add(nom);
        }
    }

    public List<String> getListe() {
        return liste;
    }
}








