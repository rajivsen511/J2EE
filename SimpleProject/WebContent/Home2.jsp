<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Delete this user</title>
    <style>
        table#nat {
            width: 50%;
            background-color:white;
        }
    </style>
</head>
<body>
<%
    String name = request.getParameter("name");
%>
    <table id="nat">
    <tr>
        <td>name</td>
        <td><%= name %>
        </td>
    </tr>
    <br>
    This user is deleted from database

 <a href="Update.jsp">Update the employee data </a>
</body>
</html>