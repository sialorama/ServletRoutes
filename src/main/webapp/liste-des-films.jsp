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
    <p><h2>La liste des films :</h2></p>
</head>
<body>
<%
    List<Film> films  = (List) request.getAttribute("films");
    for(Film ac: films) { %>
<h3><%= ac.getTitre() %> <%= ac.getAffiche() %> <%= ac.getDescription() %> <a href="film&id=<%= ac.getId() %>">detail</a></h3>
<% } %>
</body>
</html>
