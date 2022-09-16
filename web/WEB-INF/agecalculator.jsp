<%-- 
    Document   : agecalculator
    Created on : 12-Sep-2022, 1:00:05 PM
    Author     : naomy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page - Age Calculator</title>
    </head>
    <body>
        <h1>Age Calculator</h1>
        
        <form action="age" method="POST">
            <label>Enter your age: </label>
            
            <input type="number" id="age" name="age" value="">
            
            <button type="submit">Age next birthday</button>
        </form>
        <% if(request.getAttribute("age")!= null) { %>
        <p>Your age next birthday will be <%= request.getAttribute("age") %> </p>
        <% }%>
        
        <% if (request.getAttribute("message") != null) { %>
        <p><%= request.getAttribute("message") %></p>
        <% } %>
        
        <a href="/Lab2/arithmetic">Arithmetic Calculator</a>
    </body>
</html>
