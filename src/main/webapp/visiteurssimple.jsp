<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*" %>
<%
    // Récupérer le nom passé dans l'URL
    String nom = request.getParameter("nom");

    // Récupérer la liste des visiteurs depuis le contexte
    ServletContext context = application;
    List<String> visiteurs = (List<String>) context.getAttribute("visiteurs");

    if (visiteurs == null) {
        visiteurs = new ArrayList<>();
        context.setAttribute("visiteurs", visiteurs);
    }

    // Ajouter le visiteur s'il existe
    if (nom != null && !nom.trim().isEmpty()) {
        visiteurs.add(nom);
    }
%>

<html>
<head><title>Liste des visiteurs</title></head>
<body>
<h2>Liste des visiteurs :</h2>
<ul>
<% for (String v : visiteurs) { %>
    <li><%= v %></li>
<% } %>
</ul>
</body>
</html>


