package com.icms.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.icms.bean.Authentication;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String Username,Password,Role;
		response.setContentType("text/html");
		System.out.println("in login sevlet");
		Username=request.getParameter("username");
		Password=request.getParameter("password");
		System.out.println(Username);
		System.out.println(Password);
		Authentication loginservice=new Authentication();
		boolean result=loginservice.authenticate(Username, Password);
		System.out.println(result);
		if(result==true){

				request.getSession().setAttribute("username", Username);
				response.sendRedirect("employee.jsp");

			}

		else{
			response.sendRedirect("404.jsp");

		}
   }

}
