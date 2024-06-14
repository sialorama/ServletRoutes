<%--
  Created by IntelliJ IDEA.
  User: 29010-55-13
  Date: 14/06/2024
  Time: 08:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Acteur</title>
</head>
<body>
<h1>Ajouter un Acteur</h1>
<form action="/AddActeur" method="post">
    <label for="nom">Nom:</label>
    <input type="text" id="nom" name="nom" required>
    <br>
    <label for="prenom">Prénom:</label>
    <input type="text" id="prenom" name="prenom" required>
    <br>
    <label for="photo">Photo URL:</label>
    <input type="text" id="photo" name="photo" required>
    <br>
    <input type="submit" value="Ajouter">
</form>
<br>
<h2>Acteur ajouté:</h2>
<p>Nom: ${acteur.nom}</p>
<p>Prénom: ${acteur.prenom}</p>
<p>Photo: <img src="${acteur.photo}" alt="Photo de ${acteur.nom}" width="100"></p>
</body>
</html>

