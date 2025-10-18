<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Authentification</title>
</head>
<body>
<h2>Connexion</h2>
<form action="auth" method="post">
    <label>Nom d'utilisateur :</label>
    <input type="text" name="login" required><br><br>

    <label>Mot de passe :</label>
    <input type="password" name="password" required><br><br>

    <input type="submit" value="Se connecter">
</form>
</body>
</html>

