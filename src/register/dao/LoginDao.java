package register.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;




public class LoginDao {
	String sql = "select * from login where uname=? and pass=?";
	String url  = "jdbc:mysql://localhost:3306/bankRegister";
	String username = "root";
	String password = "";
	public boolean check(String uname,String pass)
	{
		
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			//System.out.println("1");
			Connection con = DriverManager.getConnection(url,username,password);
			//System.out.println("2");
			PreparedStatement st = con.prepareStatement(sql);
			
			st.setString(1,uname);
			st.setString(2,pass);
			//System.out.println("4");
			ResultSet rs = st.executeQuery();
			//System.out.println("5");
			if(rs.next())
			{
				System.out.println("login");
				return true;
			}
			
					
		}
		catch(Exception e)
		{
//			e.printStackTrace();
			System.out.println(e);
		}
		
		
		return false;
		
	}
	

}

