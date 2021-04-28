//data fatech to the table of account details 

package register;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;





public class withdrowal2 {
	String sql = "select amount from amounts where account_no=?";
	String url  = "jdbc:mysql://localhost:3306/bankRegister";
	String username = "root";
	String password = "";
	public int check_amount(long acount)
	{
		
		
		
		
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
		
			Connection con = DriverManager.getConnection(url,username,password);
			
			PreparedStatement st = con.prepareStatement(sql);
			
			st.setLong(1,acount);
			
			ResultSet rs = st.executeQuery();
		
			if(rs.next())
			{
				
			
				int amounts = rs.getInt("amount");
					
				
				return amounts;
				
			}
			
		
			
			
					
		}
		catch(Exception e)
		{
//			e.printStackTrace();
			
			System.out.println("no match"+e);
			
		}
	
		
		return 0;
		
	}


}

