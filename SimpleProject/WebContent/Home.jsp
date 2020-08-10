<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Display</title>
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
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String address = request.getParameter("address");
    String age = request.getParameter("age");
    String id = request.getParameter("id");
    
%>
<table id="nat">
    <tr>
        <td>name</td>
        <td><%= name %>
        </td>
    </tr>
    <tr>
        <td>username</td>
        <td><%= username %>
        </td>
    </tr>
    <tr>
                <td>password</td>
                <td><%= password%>
                </td>
            </tr>
    <tr>
        <td>address</td>
        <td><%= address %>
        </td>
    </tr>
    <tr>
        <td>age</td>
        <td><%= age %>
        </td>
    </tr>
    <tr>
        <td>id</td>
        <td><%= id %>
        </td>
    </tr>
   
</table>
<br>
 <i>Employee data successfully inserted from student</i> 
 <br>
 <a href="Delete.jsp">DELETE the employee data </a>
</body>
</html>