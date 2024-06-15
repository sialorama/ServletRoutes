<%@ page import="java.util.List" %>
<%@ page import="com.servletscinema.model.Film" %><%--
  Created by IntelliJ IDEA.
  User: 29010-55-13
  Date: 13/06/2024
  Time: 17:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Liste des films</title>
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
        <p><h1 class="centered">La liste des films :</h1><br><br>
    <%
        List<Film> films  = (List) request.getAttribute("films");
        for(Film ac: films) { %>
    <h3><%= ac.getTitre() %> <%= ac.getAffiche() %> <%= ac.getDescription() %> <a href="film&id=<%= ac.getId() %>">detail</a></h3>
    <% } %>
    </div>
</body>
</html>
