<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>JSP - Hello World</title>
</head>
<body>
<h1><%= "Home" %></h1>
<br/><center>
  <a href="Servlet-Accueil">Ce lien est exposé dans l'index.jsp</a><br><br>
  <a href="ListeActeurs">La liste des acteurs</a><br><br>
  <a href="ListeFilms">La liste des films</a><br><br>
  <a href="/AddActeur">La liste des films</a><br><br>
</center>

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
</body>
</html>