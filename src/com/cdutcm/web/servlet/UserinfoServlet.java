package com.cdutcm.web.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cdutcm.domain.JResult;
import com.cdutcm.service.UserinfoService;

import net.sf.json.JSONArray;



public class UserinfoServlet extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//传递请求到service层
		UserinfoService service=new UserinfoService();
		List<JResult> infoList=null;
		try {
			infoList=service.findAllUserinfo();
		}catch(SQLException e) {
			e.printStackTrace();
		}
		request.setCharacterEncoding("utf-8");
		//创建String对象，接受传递过来的值
		String str=request.getParameter("infoList");
	
		JSONArray listArray=JSONArray.fromObject(infoList);
		System.out.println(listArray);
		response.setCharacterEncoding("utf-8");
		response.getWriter().write(listArray.toString()); 


     
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
