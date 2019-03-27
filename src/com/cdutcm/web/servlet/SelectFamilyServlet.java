package com.cdutcm.web.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cdutcm.domain.Family;
import com.cdutcm.service.FamilyService;

import net.sf.json.JSONArray;

/**
 * Servlet implementation class SelectFamilyServlet
 */
public class SelectFamilyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		FamilyService service=new FamilyService();
		List<Family> familylist=null;
		try {
			familylist=service.selectfamiy();
		} catch (Exception e) {
			// TODO: handle exception
		}
		request.setCharacterEncoding("utf-8");
		JSONArray listArray=JSONArray.fromObject(familylist);
		System.out.println(listArray);
		response.setCharacterEncoding("utf-8");
		response.getWriter().write(listArray.toString()); 
		response.getWriter().flush();
		
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
