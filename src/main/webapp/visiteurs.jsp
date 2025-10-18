<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Liste des visiteurs</title>
</head>
<body>
<h2>Liste des visiteurs :</h2>
<ul>
    <c:forEach var="v" items="${visiteurs}">
        <li>${v}</li>
    </c:forEach>
</ul>
</body>
</html>
