package register;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AccountDetails")
public class AccountDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public AccountDetails() 
    {
        super();
        // TODO Auto-generated constructor stub
    }

	String url1  = "jdbc:mysql://localhost:3306/bankRegister";
	String username1 = "root";
	String password1 = "";
	

	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//TODO Auto-generated method stub
		
	
		
		//doGet(request, response);
		response.setContentType("text/html; charset=UTF-8");
		//String messages = null;
		
		String acc_tye = request.getParameter("meal_preference");
		String name = request.getParameter("name");
		System.out.println(name);
		String father_name = request.getParameter("father_name");
		String date_of_birth = request.getParameter("date");
		String emails = request.getParameter("email");
		long phone_number = Long.parseLong(request.getParameter("phone_number"));
		String gender = request.getParameter("gender");
		String pancard = request.getParameter("pancard");
		long nominee_addhaar= Long.parseLong(request.getParameter("addhaar"));
		String Religion = request.getParameter("Religion");
		String nationality = request.getParameter("nationality");
		String n = null;
		
		try
		{
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url1,username1,password1);
			PreparedStatement stt = con.prepareStatement("insert into account values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
			stt.setLong(1,phone_number);
			stt.setString(2,acc_tye);
			stt.setString(3,name);
			stt.setString(4,father_name);
			
			stt.setString(5,date_of_birth);
			stt.setString(6,emails);
			stt.setLong(7,phone_number);
			stt.setString(8,gender);
			stt.setString(9,pancard);
			stt.setString(10,Religion);
			
			stt.setString(11,nationality);
			stt.setString(12,n);
			stt.setLong(13,nominee_addhaar);
			
			int rs = stt.executeUpdate();
		
			if (rs > 0) {
				try
				{
					String acc = String.valueOf(phone_number);
					System.out.println(acc);
					request.setAttribute("account_no",acc);
					getServletContext().getRequestDispatcher("/Address.jsp").forward(request, response);
					//response.sendRedirect("Address.jsp");  
				}catch(Exception e)
				{
					System.out.println(e);
				}
				
            }
		
			 
			
		}
		catch(Exception e)
		{
//			
			System.out.println(e);
			
		}
		
		
	}


}
