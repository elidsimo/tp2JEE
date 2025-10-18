<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Page Source (Forwardsource.jsp)</title>
</head>
<body>
<h2>Début de la page Source</h2>

<%
    // Trace côté serveur (console WildFly)
    System.out.println(">>> AVANT le forward : exécution de Forwardsource");
%>

<p>Ce texte HTML est AVANT le forward.</p>

<!-- Forward vers une autre page -->
<jsp:forward page="Forwardtarget.jsp" />

<%
    // Cette ligne NE sera jamais exécutée après le forward
    System.out.println(">>> APRÈS le forward ");
%>

<p>Ce texte HTML est APRÈS le forward </p>

<h2>Fin de la page Source</h2>
</body>
</html>
