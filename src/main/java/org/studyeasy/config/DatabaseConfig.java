package org.studyeasy.config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConfig {
	public static  Connection getConnection() {
		
		// Initialize all the information regarding
		String dbURL= "jdbc:mysql://localhost:3306/studyeasy?useSSL=false";
		String dbUsername ="root";
		String dbPassword = "admin";
		Connection con = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection(dbURL, dbUsername, dbPassword);
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		System.out.println(con);
		return con;
		
	}

}
