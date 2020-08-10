<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>User Data</title>
</head>
<style>
    div.ex {
        text-align: right;
        width: 300px;
        padding: 50px;
        border: 5px solid grey;
        margin: 0px
    }
</style>
<body>
<h1>Employee Registration Form</h1>
<div class="ex">
    <form action="RegistrationController" method="post">
        <table style="with: 50%">
            <tr>
                <td>name</td>
                <td><input type="text" name="name"/></td>
            </tr>
            <tr>
                <td>username</td>
                <td><input type="text" name="username"/></td>
            </tr>
            <tr>
                <td>password</td>
                <td><input type="text" name="password"/></td>
            </tr>
            <tr>
                <td>address</td>
                <td><input type="text" name="address"/></td>
            </tr>
            <tr>
                <td>age</td>
                <td><input type="text" name="age"/></td>
            </tr>
            <tr>
                <td>id</td>
                <td><input type="text" name="id"/></td>
            </tr>
         
        </table>
        <input type="submit" value="register"/>
    </form>
    <br>
    create a EMPLOYEE table in test database before registering this form
    
</div>
</body>
</html>