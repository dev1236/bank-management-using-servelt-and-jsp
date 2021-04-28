//data fatech to the table of account details 

package register.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;





public class AddressDataFetch {
	String sql = "select * from address where Acount=?";
	String url  = "jdbc:mysql://localhost:3306/bankRegister";
	String username = "root";
	String password = "";
	public String[] checks(String acount)
	{
		String address[] = new String[13];
		long acounts = Long.parseLong(acount);
		
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
		
			Connection con = DriverManager.getConnection(url,username,password);
			
			PreparedStatement st = con.prepareStatement(sql);
			
			st.setLong(1,acounts);
			
			ResultSet rs = st.executeQuery();
		
			if(rs.next())
			{
				System.out.println("hello");
				String Add_no= String.valueOf(rs.getInt("Add_no"));
				String country= rs.getString("county");
				String l_ouse_no = rs.getString("l_ouse_no");
				String l_nearby = rs.getString("l_nearby");
				String l_post = rs.getString("l_post");
				String l_state = rs.getString("l_state");
				String l_pincode = String.valueOf(rs.getInt("l_pincode"));
				String p_ouse_no = rs.getString("p_ouse_no");
				String p_nearby = rs.getString("p_nearby");
				String p_post = rs.getString("p_post");
				String p_state = rs.getString("p_state");
				String p_pincode = String.valueOf(rs.getInt("p_pincode"));
				
				String Acounts = String.valueOf(rs.getLong("Acount"));
		
				
				address[0]=Add_no;
				address[1]=country;
				address[2]=l_ouse_no;
				address[3]=l_nearby;
				address[4]=l_post;
				address[5]=l_state;
				address[6]=l_pincode;
				address[7]=p_ouse_no;
				address[8]=p_nearby;
				address[9]=p_post;
				address[10]=p_state;
				address[11]=p_pincode;
				address[12]=Acounts;
				
				
			}
			
					
		}
		catch(Exception e)
		{
//			e.printStackTrace();
			System.out.println(e);
		}
	
		
		return address;
		
	}
	

}

