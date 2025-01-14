package org.studyeasy.model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.studyeasy.config.DatabaseConfig;
import org.studyeasy.entity.User;

public class UsersModel {
	public List<User> listuser() {
		
		List<User> listusers = new ArrayList<User>();
		
		// Step 1: connection object initialization
		Connection connect = DatabaseConfig.getConnection();
		Statement stmt = null;
		ResultSet rs = null;
		System.out.println(connect);
		//Step 2: Create the DB query
		String query ="SELECT * FROM studyeasy.users";
		try {
			stmt = connect.createStatement();
			

			// Step 3: Execution of statement
			rs = stmt.executeQuery(query);
			
			while (rs.next()) {
				System.out.println(connect);
				listusers.add(new User(rs.getInt("user_id"), rs.getString("username"), rs.getString("email")));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return listusers;
	}
	

}
