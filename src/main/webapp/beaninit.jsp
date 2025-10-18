<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="agence" class="com.example.Agence" scope="session" />

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Initialisation du Bean Agence</title>
</head>
<body>
<h2>Initialisation du Bean Agence</h2>

<%
    // Récupération des paramètres du formulaire (s’ils existent)
    String nom = request.getParameter("nom");
    String ville = request.getParameter("ville");
    String codePostal = request.getParameter("codePostal");

    if (nom != null && ville != null && codePostal != null) {
        agence.setNom(nom);
        agence.setVille(ville);
        agence.setCodePostal(codePostal);
    }
%>

<!-- Formulaire pour initialiser le bean -->
<form method="post" action="beaninit.jsp">
    <label>Nom :</label>
    <input type="text" name="nom" value="<%= agence.getNom() != null ? agence.getNom() : "" %>" required><br><br>

    <label>Ville :</label>
    <input type="text" name="ville" value="<%= agence.getVille() != null ? agence.getVille() : "" %>" required><br><br>

    <label>Code Postal :</label>
    <input type="text" name="codePostal" value="<%= agence.getCodePostal() != null ? agence.getCodePostal() : "" %>" required><br><br>

    <input type="submit" value="Initialiser">
</form>

<hr>

<!-- Affichage du bean après initialisation -->
<h3>Détails de l'agence stockée dans la session :</h3>
<ul>
    <li><b>Nom :</b> <jsp:getProperty name="agence" property="nom"/></li>
    <li><b>Ville :</b> <jsp:getProperty name="agence" property="ville"/></li>
    <li><b>Code Postal :</b> <jsp:getProperty name="agence" property="codePostal"/></li>
</ul>

<p><a href="beanshow.jsp">Aller à la page beanShow.jsp</a></p>

</body>
</html>
