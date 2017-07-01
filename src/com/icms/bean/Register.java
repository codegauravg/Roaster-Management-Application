package com.icms.bean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class Register {
	
	String userid_exist="false";
	Boolean registration_success=false;
	PreparedStatement pstmt;
	Connection con;
	
	public String useridexists(String username)
	{
		
			try{
			
				Class.forName("com.mysql.jdbc.Driver");  
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/icms_employees?autoReconnect=true&useSSL=false","root","admin");  
				Statement st = con.createStatement();
				ResultSet rs = st.executeQuery("select * from ");
				while(rs!=null && rs.next())
				{
					String id=rs.getString("username");
					if(id.equalsIgnoreCase(username))
					{
						userid_exist="true";
					}
				}
			} catch(Exception e) {
			System.out.println(e.getMessage());
			}
		
		
		return userid_exist;
	}
	
	public boolean register_user(String username,String pwd,String f_name,String l_name,String role)
	{
		try{
			
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/icms_employees?autoReconnect=true&useSSL=false","root","admin");  
			Statement st = con.createStatement();
			st.executeUpdate("insert into entries values('"+username+"','"+pwd+"','"+f_name+"','"+l_name+"',S'"+role+"')");
			registration_success=true;
			st.close();
		    con.close();
			
	} catch(Exception e) {
		System.out.println(e.getMessage());
	}
           
		return registration_success;
		
	}

	
}
