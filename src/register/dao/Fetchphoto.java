package register.dao;

import java.sql.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/Fetchphoto")
public class Fetchphoto extends  HttpServlet{

	 

	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse 
  response) throws ServletException, IOException{
		
		String connectionURL = "jdbc:mysql://localhost:3306/bankregister";
		String user = "root";
		String passd = "";
	  Connection con = null;
	  HttpSession session=request.getSession(false);  
      String n=(String)session.getAttribute("Acount_no");  
      long Acount_number = Long.parseLong(n);
	  try{
	      Class.forName("com.mysql.jdbc.Driver");
	      con = DriverManager.getConnection(connectionURL, user, passd);
	      
	      PreparedStatement ps = con.prepareStatement("select photo from uploaddocument where acount=?");
	     
	      ps.setLong(1,Acount_number);
	      ResultSet rs = ps.executeQuery();
	     
	      if(rs.next()){
	          Blob photo = rs.getBlob("photo");
	          byte byteArray[] = photo.getBytes(1, (int)photo.length());
	         
	          response.setContentType("image/gif");
	         
	          OutputStream os = response.getOutputStream();
	          os.write(byteArray);
	          //os.flush();
	          //os.close();
	         
	      }
	      
	  }catch(Exception e){
		    e.printStackTrace();
	  }   
	  finally{
	      if(con != null){
	          try{
	              con.close();
	          }
	          catch(Exception e){
	              e.printStackTrace();
	          }
	      }
	  }
	}
}
	