package com.icms.bean;

import java.sql.Connection;
import java.sql.DriverManager;
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
					Class.forName("com.mysql.jdbc.Driver");  
					Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/icms_employees?autoReconnect=true&useSSL=false","root","admin");  
						//Connection con = dataSource.getConnection();;
						Statement st = con.createStatement();
						ResultSet rs = st.executeQuery("select * from loginInfo");
						while(rs!=null && rs.next())
						{
							System.out.println(rs.getString("username"));
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
					System.out.println("hi... i got this error "+e.getMessage());
					e.printStackTrace();
				}

		    }
		return authentication_status;
	  }
}
