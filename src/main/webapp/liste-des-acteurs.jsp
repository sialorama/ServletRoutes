<%@ page import="com.servletscinema.model.Acteur" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: 29010-55-13
  Date: 13/06/2024
  Time: 16:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Liste des acteurs</title>

    <h1><a href="index.jsp">Accueil</a></h1><br><br>
</head>
<body>
    <div class="centered">
        <p><h1 class="centered">La liste des acteurs :</h1><br><br>
        <%
            List<Acteur> acteurs  = (List) request.getAttribute("acteurs");
            for(Acteur ac: acteurs) { %>
        <h3><%= ac.getNom() %> <%= ac.getPrenom() %> <a href="acteur&id=<%= ac.getId() %>">detail</a></h3>
        <% } %>

    </div>
</body>
</html>
