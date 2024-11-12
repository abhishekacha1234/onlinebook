package com.company.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBUtil {
	private static Connection conn;

	public static Connection getConn() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/digitalbookrepo", "root", "satu123#");

		} catch (Exception e) {
			e.printStackTrace();
		}

		return conn;
	}
}
