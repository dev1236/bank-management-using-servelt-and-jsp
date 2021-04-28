package register;

//import java.io.PrintWriter;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


//import register.dao.RegisterDao;



@WebServlet("/Regst")
public class Regst extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	String url1  = "jdbc:mysql://localhost:3306/bankRegister";
	String username1 = "root";
	String password1 = "";
	//String sql = "insert into login values(?,?,?)";

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");  
		// TODO Auto-generated method stub
		String uname = request.getParameter("name");
		String emails = request.getParameter("emails");
		String pass= request.getParameter("pass2");
		//String pass2 = request.getParameter("pass1");
		
		//System.out.println("hello");
		//HttpSession session = request.getSession();
		//session.setAttribute("username", uname);
		//response.sendRedirect("welcoms.jsp");
		

		try
		{
			
			Class.forName("com.mysql.jdbc.Driver");
			//System.out.println("1");
			Connection con = DriverManager.getConnection(url1,username1,password1);
			//System.out.println("2");
			PreparedStatement stt = con.prepareStatement("insert into login values(?,?,?)");
			//System.out.println("hello 2");
			stt.setString(1,uname);
			stt.setString(2,emails);
			stt.setString(3,pass);
			//System.out.println("4");
			int rs = stt.executeUpdate();
			//System.out.println("5");
			if (rs > 0) {
				try
				{
					response.sendRedirect("register.html");  
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
			System.out.println("error occure");
		}
		
		
		
		
	}

}
