package com.cdutcm.web.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cdutcm.domain.Family;
import com.cdutcm.domain.Relationship;
import com.cdutcm.service.FamilyService;


public class SelectFamilyIdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//获取要查询的fid
		int fid = Integer.valueOf(request.getParameter("fid")); 
		
		//传递fid到service层
		FamilyService service=new FamilyService();
		Family family=null;
		try {
			family=service.selectfamilyid(fid);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//获取关系数据
		List<Relationship> relationshiplist=null;
		relationshiplist = service.findRelationship();
		request.setAttribute("relationshiplist", relationshiplist);
		request.setAttribute("family", family);
		request.setCharacterEncoding("utf-8");
		System.out.println(family.getAddress());
		System.out.println(relationshiplist);
		request.getRequestDispatcher("editfamily.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
