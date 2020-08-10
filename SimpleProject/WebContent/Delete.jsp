<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>

<%ResultSet resultset =null;%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Page.</title>

</head>
<body>
<%
    try{
Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
Connection connection = 
         DriverManager.getConnection
            ("jdbc:mysql://localhost:3306/test?user=root&password=root");

       Statement statement = connection.createStatement() ;

       resultset =statement.executeQuery("SELECT NAME FROM EMPLOYEE") ;
       
   
     
%>
    <div>


           <div style="padding : 10px;">
            <center>

                <form action="Remove" method="post">
                <h5>If you  want to remove users type the name of the employee</h5>
                <input type="text" placeHolder="type the employee name" name="name"/>
                  
                <select>
       <%  while(resultset.next()){ %>
           <option><%= resultset.getString(1)%>
        
           </option>
    
       <% } %>
       
    </select>
                
                <input type="submit" value="Click" name="remove"/>
                </form>

            </center>
        </div>

    </center>
    <%

        }
        catch(Exception e)
        {
             out.println("wrong entry"+e);
        }
%>

    </div>
   </body>
   </html>