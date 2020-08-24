package com.coda;
import java.sql.*;
import java.util.*;

public class Db_connection 
{
	
	public static ArrayList<String> connect()
	{
		ResultSet rs = null;
		Connection connection = null;
		Statement statement = null;
	
		try 
		{		
			String connectionURL = "jdbc:mysql://mysql:3306/student";
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			connection = DriverManager.getConnection(connectionURL, "root", "root"); 
			statement = connection.createStatement();
			String QueryString = "select * from student_details;";
			rs = statement.executeQuery(QueryString);
					
			ArrayList<String> Rows = new ArrayList<String>();
		   while (rs.next())
		   {
		       for (int i = 1; i <= 5;i++)
		       {
		           Rows.add(rs.getString(i));
		       }
		   }  		   
		   	   
//		   for(int i = 0; i < Rows.size(); i++)
//		   {
//		        System.out.print(Rows.get(i));
//		   }
//		   System.out.println();
		   
		   rs.close();
		   statement.close();
		   connection.close();
			return Rows;
			
		}
		
		catch (Exception ex) 
		{
			ArrayList<String> Rows = null;
			return Rows;
		}
		
	}
	
}
