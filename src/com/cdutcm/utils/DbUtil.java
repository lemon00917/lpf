package com.cdutcm.utils;
import java.sql.Connection;
import java.sql.DriverManager;

public class DbUtil {
	public static final  String DRIVERNAME = "com.mysql.jdbc.Driver";
	public static final  String URL = "jdbc:mysql://localhost:3306/cdutcm";
	public static final  String USER = "root";
	public static final  String PASSWORD = "159263";

	static {
		try {
			Class.forName(DRIVERNAME);
		} catch (ClassNotFoundException e) {
			System.out.println("数据库驱动注册失败！");
		}
	}
	//提供获取连接的方�?
	public static Connection getConn() throws Exception {
		// 2. 获得连接
		Connection conn = DriverManager.getConnection(URL, USER, PASSWORD);
		// 返回连接
		return conn;
	}
}
