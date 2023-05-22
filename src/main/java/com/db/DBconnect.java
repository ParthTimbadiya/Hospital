package com.db;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBconnect {
	
	private static Connection con;
	
	public static Connection getConnect() {
		
		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital", "root","sql@123");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return con;
	}

}
