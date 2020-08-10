package com.zensar.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DBDao {
	
	public void getUser(Connection conn) throws SQLException {
		
		try {
			//Register JDBC driver
			Class.forName("com.mysql.jdbc.Driver");
			
			//Establishing Connection to connect database
			conn = DriverManager.getConnection("jdbc:mysql://10.42.204.77:3306/test", "dashboarduser", "dashboarduser");
			
			//Execute Query SELECT id, name, age FROM emp
			Statement st = conn.createStatement();
			String sql = "SELECT id, name, age FROM emp";
			ResultSet rs = st.executeQuery(sql);
			
			//Retrive result from result set
			while(rs.next()) {
				int id = rs.getInt("id");
				String name = rs.getString("name");
				int age = rs.getInt("age");
				
				//Display values:
				System.out.println("ID : "+id);
				System.out.println("Name : "+name);
				System.out.println("Age : "+age);
				
			}
			
			rs.close();
			st.close();
			conn.close();
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
