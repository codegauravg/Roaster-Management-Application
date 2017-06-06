package com.icms.bean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class Authenticate {
	
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
					Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/icms_employees","root","admin");
					Statement st = con.createStatement();
					ResultSet rs = st.executeQuery("select * from loginInfo ");
					while(rs!=null && rs.next())
					{
						String id=rs.getString("username");
						String paswd=rs.getString("password");
						if(username.equalsIgnoreCase(id))
						{
							if(paswd.equals(password))
							{
								System.out.println("hello"+username+"<br>"+"whats the order");
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