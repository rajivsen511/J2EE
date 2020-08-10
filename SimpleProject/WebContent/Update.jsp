<%@ page import="java.sql.*" %>

<%ResultSet resultset =null;%>


<HTML>
<HEAD>
    <TITLE>Select element drop down box</TITLE>
</HEAD>

<BODY BGCOLOR=white>

<%
    try{
Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
Connection connection = 
         DriverManager.getConnection
            ("jdbc:mysql://localhost:3306/test?user=root&password=root");

       Statement statement = connection.createStatement() ;

       resultset =statement.executeQuery("SELECT NAME FROM EMPLOYEE") ;
   
%>

     

<center>
    <h1> please select the user to be deleted</h1>
      <form action="Update" method="post">
                <h5>If you  want to update users type employee name and username to be updated,</h5>
 <input type="text" placeHolder="type NAME" name="name"/>
                <input type="text" placeHolder="type USERNAME" name="username"/>
               <input type="submit" value="Click" name="remove"/>
</form>   
       
<select>
<%  while(resultset.next()){ %>
<option><%= resultset.getString(1)%>
</option>
<% } %>
</select>

</center>

<%

        }
        catch(Exception e)
        {
             out.println("wrong entry"+e);
        }
%>

</BODY>
</HTML>