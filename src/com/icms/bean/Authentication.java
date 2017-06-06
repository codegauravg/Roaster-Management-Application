package com.icms.bean;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.annotation.Resource;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.sql.DataSource;

/**
 * Servlet implementation class Authentication
 */
@WebServlet("/Authentication")
public class Authentication extends HttpServlet {
	private static final long serialVersionUID = 1L;

	//Define Data Source/connection pool for Resource Injection.
	@Resource(name="jdbc/icms_employees")
	private DataSource dataSource;
		
	boolean authentication_status=false;

	public boolean authenticate(String username,String password)

		{
			if(password==null || password.trim()=="")
			{
				System.out.println("Check your password");
				return false;
			}
			else
			{

				try{
						Connection con = dataSource.getConnection();;
						Statement st = con.createStatement();
						ResultSet rs = st.executeQuery("select * from loginInfo");
						while(rs!=null && rs.next())
						{
							String id=rs.getString("username");
							String pwd=rs.getString("password");
							if(username.equalsIgnoreCase(id))
							{
								if(pwd.equals(password))
								{
									System.out.println("Hello"+username+"<br>");
									authentication_status=true;
								}

							}
						}

				} catch(Exception e) {
					System.out.println(e.getMessage());
				}

		       }
		return authentication_status;
	  }
}
