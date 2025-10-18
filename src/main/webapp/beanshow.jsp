<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="agence" class="com.example.Agence" scope="session" />

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Afficher le Bean Agence</title>
</head>
<body>
<h2>Affichage du Bean depuis la session</h2>

<%
    if (agence.getNom() == null) {
%>
        <p style="color:red;">Aucune agence trouvée dans la session ❌</p>
        <a href="beaninit.jsp">Aller à la page d’initialisation</a>
<%
    } else {
%>
        <ul>
            <li><b>Nom :</b> <jsp:getProperty name="agence" property="nom"/></li>
            <li><b>Ville :</b> <jsp:getProperty name="agence" property="ville"/></li>
            <li><b>Code Postal :</b> <jsp:getProperty name="agence" property="codePostal"/></li>
        </ul>
        <a href="beaninit.jsp">Modifier le Bean</a>
<%
    }
%>

</body>
</html>
