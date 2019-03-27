package com.cdutcm.web.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cdutcm.domain.User;
import com.cdutcm.service.UserService;


public class LoginServlet extends HttpServlet {
 public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	//使用request对象的getSession()获取session，如果session不存在则创建一个
	      
	       //获得输入的用户名和密码
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			HttpSession session = request.getSession();
		      //将数据存储到session中
		     session.setAttribute("username",username);
			//将用户名和密码传递给service层
			UserService service = new UserService();
			User user = null;
			try {
				user = service.login(username,password);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			//判断用户是否登录成功 user是否为空
			if(user!=null) {
				//登录成功
				//重定向到首页
				System.out.println(session.getAttribute("username"));
				response.sendRedirect(request.getContextPath()+"/index.html");
			}
			else {
				request.setAttribute("loginError", "用户名或密码错误");
				request.getRequestDispatcher("/login.jsp").forward(request, response);
				
			}
			}
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
 }
