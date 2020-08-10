package com.zensar.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zensar.dao.DBDao;

@WebServlet(
		urlPatterns = {"/LoginAction"}
							
		)
public class LoginAction extends HttpServlet {
	
	Connection conn;
	
	public void init() throws ServletException {
		System.out.println("this method is from init()...");
		
		try {
			//Register JDBC driver
			Class.forName("com.mysql.jdbc.Driver");
			
			//Establishing Connection to connect database
			conn = DriverManager.getConnection("jdbc:mysql://10.42.204.77:3306/test", "dashboarduser", "dashboarduser");
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		
		String user = req.getParameter("user");
		String password = req.getParameter("pwd");
		System.out.println("User : "+user+ " and Password: "+password);
		DBDao dbDao = new DBDao();
		try {
			dbDao.getUser(conn);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(user.equals("Dinesh") && password.equals("password")) {
			res.sendRedirect("LoginSuccess.jsp");
		}else {
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/login.html");
			PrintWriter pw = res.getWriter();
			pw.println("<font color=red>Incorrect user id and password.</font>");
			rd.include(req, res);
		}
	}
	
	public void destory() {
		System.out.println("This method is from destory()...");
	}
}
