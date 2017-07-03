package com.revature.PubHub100;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionUtil {
	public static Connection getconnection()throws Exception {
		Class.forName("com.mysql.jdbc.Driver");
		Connection connection=DriverManager.getConnection(
				"jdbc:mysql://localhost:3306/Books_db",
				"root",
				"jeppiaar5"
				
				);
		
		
		return connection;
		
	}

}
