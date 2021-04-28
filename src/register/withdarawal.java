package register;

import javax.servlet.annotation.WebServlet;




import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/withdrow")
public class  withdarawal extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public withdarawal() 
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
		
		
		HttpSession session=request.getSession(false);  
	      String n=(String)session.getAttribute("Acount_no");  
	      long Acount_number = Long.parseLong(n);
		int amount= Integer.parseInt(request.getParameter("amount"));
		System.out.println(amount);
		withdrowal2 fet_amount = new withdrowal2(); 
		int acc_amount = fet_amount.check_amount(Acount_number);
		int update_amount = acc_amount-amount;
		String sql = "update amounts set amount=? where account_no="+Acount_number;
		try
		{
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url1,username1,password1);
			PreparedStatement stt = con.prepareStatement(sql);
			
	
			stt.setLong(1, update_amount);
			
			int rs = stt.executeUpdate();
			System.out.println(rs);
			if (rs > 0) {
				try
				{
					
					response.sendRedirect("WithdrownBilance.jsp");  
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
