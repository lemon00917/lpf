package com.cdutcm.web.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cdutcm.service.FamilyService;


public class DeleteFamilyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
				int fid = Integer.valueOf(request.getParameter("fid")); 
			
				FamilyService service=new FamilyService();
				try {
					service.delfamilyid(fid);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				System.out.println(fid);
				request.getRequestDispatcher("family.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
