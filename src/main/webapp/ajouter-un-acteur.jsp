<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Ajouter un Acteur</title>
    <style>
        .centered {
            text-align: center;
            margin: 0 auto;
            max-width: 500px; /* Pour limiter la largeur du contenu centré */
        }
    </style>
    <h1 class="centered"><a href="index.jsp">Accueil</a></h1><br><br>
</head>
<body>
<div class="centered">
    <h1 class="centered">Ajouter un Acteur</h1>
    <form action="Add-Acteur" method="post">
        <label for="firstName">Prénom:</label>
        <input type="text" id="firstName" name="firstName" required><br><br>

        <label for="lastName">Nom:</label>
        <input type="text" id="lastName" name="lastName" required><br><br>

        <label for="photo">Photo (URL):</label>
        <input type="text" id="photo" name="photo" required><br><br>

        <input type="submit" value="Ajouter">
    </form>
</div>
</body>
</html>
