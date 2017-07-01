package com.icms.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.icms.bean.Register;

/**
 * Servlet implementation class AddEmployee
 */
@WebServlet("/AddEmployee")
public class AddEmployee extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    // TODO Add Employee into the database.
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try{
			String username, pwd, f_name, l_name, role;
			
			//TODO Get Employee information form Employee JSP.
			username = request.getParameter("username");
			pwd = request.getParameter("pwd");
			f_name = request.getParameter("f_name");
			l_name = request.getParameter("l_name");
			role = request.getParameter("role");
				
			Register r=new Register(); 
			String idexist=r.useridexists(username);
			System.out.print(idexist);
			
			if(idexist.equalsIgnoreCase("false"))
			{
				boolean registerstatus=r.register_user(username, pwd, f_name, l_name, role);
				System.out.print(registerstatus);
				if(registerstatus)
				{
					if(role.equalsIgnoreCase("Employee")){
						request.getSession().setAttribute("username", username);
						response.sendRedirect("success.jsp");
					}
					else{
						request.getSession().setAttribute("username", username);
						response.sendRedirect("afterloginuser.jsp");
					}
				}
				else{
					System.out.print("there is some problem");
				}
			}
			else{
				System.out.print("this id exists");
	}

		} catch(Exception e) {
			System.out.println("hi... i got this error "+e.getMessage());
			e.printStackTrace();
		}
		
		
   }
		
	

}
