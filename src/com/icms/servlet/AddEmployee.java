package com.icms.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.icms.bean.Register;

@WebServlet("/AddEmployee")
public class AddEmployee extends HttpServlet{
	
	private static final long serialVersionUID = 1L;
    
    // TODO Add Employee into the database.
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try{
			String username, pwd, f_name, l_name, role;
			
			//TODO Get Employee information form Employee JSP.
			f_name = request.getParameter("first_name");
			l_name = request.getParameter("last_name");
			username = request.getParameter("email");
			pwd = request.getParameter("pwd");
			role = "Employee";
			System.out.println("fname"+f_name+"ln"+l_name+username+pwd);
			Register r=new Register(); 
			String idexist=r.useridexists(username);
			System.out.print(idexist);
			
			if(idexist.equalsIgnoreCase("false"))
			{
				boolean registerstatus=r.register_user(username, pwd, f_name, l_name, role);
				System.out.print(registerstatus);
				if(registerstatus)
				{
						System.out.println(username+"registered");
						response.sendRedirect("admin_view_emp.jsp");
				}
				else{
					System.out.print("there is some problem");
				}
			}
			else{
				System.out.print("This id already exists");
	}

		} catch(Exception e) {
			System.out.println("hi... i got this error "+e.getMessage());
			e.printStackTrace();
		}
		
		
   }
		
	


}
