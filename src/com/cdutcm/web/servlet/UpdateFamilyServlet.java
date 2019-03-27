package com.cdutcm.web.servlet;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.sql.SQLException;
import java.util.Map;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import com.cdutcm.domain.Family;
import com.cdutcm.service.FamilyService;


public class UpdateFamilyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//1.获取数据
		        request.setCharacterEncoding("UTF-8");
				Map<String,String[]> ParameterMap=request.getParameterMap();
				response.setContentType("text/html;charset=UTF-8");
//				for(Map.Entry<String, String[]> entry:ParameterMap.entrySet()){
//				    System.out.println(entry.getKey());
//	                 for(String str:entry.getValue()){
//	              System.out.println(str);
//	               }
//	             }

				//2.封装数据​
				
				
				Family famliy=new Family();
				try {
					BeanUtils.populate(famliy, ParameterMap);
					
				} catch (IllegalAccessException | InvocationTargetException e) {
					// TODO: handle exception
					e.printStackTrace();
				}

				//3.传递数据给service层
				FamilyService service=new FamilyService();
				try {
					service.updatefamily(famliy);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}	
				//response.setCharacterEncoding("UTF-8");
				//response.setContentType("text/html;charset=UTF-8");
				//跳转到检测界面
				response.sendRedirect(request.getContextPath()+"/family.jsp");
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
