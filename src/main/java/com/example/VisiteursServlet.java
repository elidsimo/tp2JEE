package com.example;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import jakarta.servlet.ServletContext;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/visiteurs")
public class VisiteursServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        ServletContext context = getServletContext();

        // Récupérer ou créer la liste des visiteurs
        List<String> visiteurs = (List<String>) context.getAttribute("visiteurs");
        if (visiteurs == null) {
            visiteurs = new ArrayList<>();
            context.setAttribute("visiteurs", visiteurs);
        }

        // Ajouter le visiteur si le paramètre "nom" existe
        String nom = request.getParameter("nom");
        if (nom != null && !nom.trim().isEmpty()) {
            visiteurs.add(nom);
        }

        // Placer la liste dans request pour JSP
        request.setAttribute("visiteurs", visiteurs);

        // Rediriger vers JSP
        request.getRequestDispatcher("/visiteurs.jsp").forward(request, response);
    }
}

