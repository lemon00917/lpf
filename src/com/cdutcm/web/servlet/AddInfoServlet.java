package com.cdutcm.web.servlet;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.sql.SQLException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;import com.cdutcm.domain.Jrsesult;
import com.cdutcm.service.UserinfoService;


public class AddInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//1.获取数据
		request.setCharacterEncoding("UTF-8");
		Map<String,String[]> ParameterMap=request.getParameterMap();
		//2.封装数据
		response.setContentType("text/html;charset=UTF-8");
		
		Jrsesult jresult=new Jrsesult();
		try {
			BeanUtils.populate(jresult, ParameterMap);
			
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		//手动添加表单没有的数据
		//jid
		
		//jresult.setJid(UUID.randomUUID().toString());
		//日期 
		//SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		//String time = format.format(new Date());
		//jresult.setTime(time);
		
		//3.传递数据给service层
		UserinfoService service=new UserinfoService(); 
		try {
			 service.addinfo(jresult);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//跳转到检测界面
		response.sendRedirect(request.getContextPath()+"/table-images-list.html");
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
