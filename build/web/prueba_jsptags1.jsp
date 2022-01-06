<%-- 
    Document   : prueba_jsptags
    Created on : 24/12/2021, 00:28:23
    Author     : Gabriela
--%>

<%@page contentType="text/html charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
    String alumnos[] = {"Silvestre", "Gabriela", "Ariana"};
    pageContext.setAttribute("misAlumnos", alumnos);
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>ALUMNOS</h1>
        <c:forEach var="alumno" items="${misAlumnos}">
            ${alumno} <br>
        </c:forEach>
        
    </body>
</html>
