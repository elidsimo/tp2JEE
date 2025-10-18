package com.example;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.*;
import java.util.Properties;

@WebServlet("/auth")
public class AuthServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String login = request.getParameter("login");
        String password = request.getParameter("password");

        // Charger le fichier de propriétés depuis WEB-INF
        InputStream input = getServletContext().getResourceAsStream("/WEB-INF/authentication.properties");
        Properties users = new Properties();
        users.load(input);

        // Vérifier les identifiants
        String storedPassword = users.getProperty(login);

        if (storedPassword != null && storedPassword.equals(password)) {
            // Authentification réussie
            request.setAttribute("user", login);
            request.getRequestDispatcher("/succes.jsp").forward(request, response);
        } else {
            // Échec d'authentification
            request.getRequestDispatcher("/erreur.jsp").forward(request, response);
        }
    }
}
