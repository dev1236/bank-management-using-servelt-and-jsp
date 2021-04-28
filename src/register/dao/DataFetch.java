//data fatech to the table of account details 

package register.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;





public class DataFetch {
	String sql = "select * from account where Acc_name=?";
	String url  = "jdbc:mysql://localhost:3306/bankRegister";
	String username = "root";
	String password = "";
	public String[] check(String uname)
	{
		String ar[] = new String[5];
		String arr[] = new String[1];
		arr[0]="dev";
		
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
		
			Connection con = DriverManager.getConnection(url,username,password);
			
			PreparedStatement st = con.prepareStatement(sql);
			
			st.setString(1,uname);
			
			ResultSet rs = st.executeQuery();
		
			if(rs.next())
			{
				
				String Acount = String.valueOf(rs.getLong("Acount"));
				String Acc_name = rs.getString("ACc_name");
				String father_name = rs.getString("father_name");
				String pan_number = rs.getString("pancard");
				String addhaar = String.valueOf(rs.getLong("addhaar"));
				System.out.println("datafetchpage" +uname);		
				ar[0]=Acount;
				ar[1]=Acc_name;
				ar[2]=father_name;
				ar[3]=pan_number;
				ar[4]=addhaar;
				return ar;
				
			}
			
		
			
			
					
		}
		catch(Exception e)
		{
//			e.printStackTrace();
			
			System.out.println("no match"+e);
			
		}
	
		
		return null;
		
	}


}

