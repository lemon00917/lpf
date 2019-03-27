package com.cdutcm.web.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cdutcm.service.UserinfoService;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.Statement;

public class DeleteInfoServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//获取要删除的jid
		int jid = Integer.valueOf(request.getParameter("jid")); 
		//传递jid到service层
		UserinfoService service=new UserinfoService();
		try {
			service.delInfoByJid(jid);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println(jid);
		
	     //response.sendRedirect(request.getContextPath()+"/userInfo");
		request.getRequestDispatcher("table-images-list.html").forward(request, response);
	  } 
	  




	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
