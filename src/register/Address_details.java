package register;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Address_details")
public class Address_details extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Address_details() {
        super();
        // TODO Auto-generated constructor stub
    }
    String url1  = "jdbc:mysql://localhost:3306/bankRegister";
	String username1 = "root";
	String password1 = "";


	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		Long account_no =Long.parseLong(request.getParameter("account"));
		System.out.println(account_no);
		Random ran = new Random();
		int Add_no = ran.nextInt();
		
		String country = request.getParameter("country");
		String l_house_no = request.getParameter("l_house_no");
		
		String street = request.getParameter("street");
		String l_post_office = request.getParameter("l_post_office");
		String l_state = request.getParameter("l_state");
		int l_pincode = Integer.parseInt(request.getParameter("pin_code"));
		String p_house_no = request.getParameter("p_house_no");
		String p_nearby = request.getParameter("p_nearby");
		String p_post = request.getParameter("p_post");
		String p_state = request.getParameter("p_state");
		int p_pin_code= Integer.parseInt(request.getParameter("p_pin_code"));
	
		//System.out.println("Hello");
		
		try
		{
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url1,username1,password1);
			PreparedStatement stt = con.prepareStatement("insert into address values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
			
			stt.setInt(1,Add_no);
			stt.setString(2,country);
			stt.setString(3,l_house_no);
			stt.setString(4,street);
			
			stt.setString(5,l_post_office);
			stt.setString(6,l_state);
			stt.setInt(7,l_pincode);
			stt.setString(8,p_house_no);
			stt.setString(9,p_nearby);
			stt.setString(10,p_post);
			
			stt.setString(11,p_state);
			stt.setInt(12,p_pin_code);
			stt.setLong(13,account_no);
			//System.out.println("hello bulbul");
			int rs = stt.executeUpdate();
			System.out.println("5");
			if (rs > 0) {
				try
				{
					String acc= String.valueOf(account_no);
					System.out.println(acc);
					request.setAttribute("account_no",acc);
					getServletContext().getRequestDispatcher("/uploadDocument.jsp").forward(request, response);
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
			System.out.println("error occure");
		}
		
	}

}
