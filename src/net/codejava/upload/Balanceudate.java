package net.codejava.upload;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;



public class Balanceudate {
	public void check(long acount_no)
	{
		//long account = Long.parseLong(acount_no);
		System.out.println(acount_no);
		String url  = "jdbc:mysql://localhost:3306/bankRegister";
		String username = "root";
		String password = "";
		int amount = 0;
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
		
			Connection con = DriverManager.getConnection(url,username,password);
			
			PreparedStatement st = con.prepareStatement("insert into amounts values(?,?)");
			
			st.setLong(1,acount_no);
			st.setInt(2,amount);
			System.out.println("1");
			int rs = st.executeUpdate();
			System.out.println("2");
			if(rs !=0)
			{
				
				System.out.println("update balance");
			}
			
		
			
			
					
		}
		catch(Exception e)
		{
//			e.printStackTrace();
			
			System.out.println("no match"+e);
			
		}
	

		
	}



	
}
