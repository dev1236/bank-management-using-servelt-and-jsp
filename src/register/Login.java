package register;

//import java.io.PrintWriter;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import register.dao.AddressDataFetch;
import register.dao.DataFetch;
import register.dao.LoginDao;



@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	@SuppressWarnings("unused")
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String uname = request.getParameter("name");
		
		String pass1 = request.getParameter("pass1");
		
		
		LoginDao dao = new LoginDao();
		try {
			if(dao.check(uname, pass1))
			{
				DataFetch da = new DataFetch();
				String[] x1 = da.check(uname);
				
				
		        
				if(x1 != null)
				{
					
					String Acount_no = x1[0];
					String Acc_name = x1[1];
					String father_name = x1[2];
					String pan_number = x1[3];
					String addhaar = x1[4];
					
					AddressDataFetch address = new AddressDataFetch();
					String[] add1 = address.checks(Acount_no);
					//String Add_no = add1[0];
					String country= add1[1];
					
					String l_ouse_no =add1[2];
					String l_nearby = add1[3];
					String l_post = add1[4];
					String l_state = add1[5];
					String l_pincode =add1[6];
					String p_ouse_no = add1[7];
					String p_nearby = add1[8];
					String p_post = add1[9];
					String p_state = add1[10];
					String p_pincode = add1[11];
					
					//String Accounts = add1[12];
					//HttpSession session = request.getSession();
					
					request.setAttribute("Account_no",Acount_no );
					request.setAttribute("Acc_name",Acc_name );
					request.setAttribute("father_name",father_name);
					request.setAttribute("pan_number",pan_number );
					request.setAttribute("addhaar",addhaar );
					
					request.setAttribute("Country",country );
					request.setAttribute("l_ouse_no",l_ouse_no );
					request.setAttribute("l_nearby",l_nearby);
					request.setAttribute("l_postr",l_post );
					request.setAttribute("l_state",l_state );
					request.setAttribute("l_pincode",l_pincode );
					
					request.setAttribute("p_ouse_no",p_ouse_no );
					request.setAttribute("p_nearby",p_nearby);
					request.setAttribute("p_post",p_post );
					request.setAttribute("p_state",p_state );
					request.setAttribute("p_pincode",p_pincode );
				
					HttpSession session=request.getSession();  
			        session.setAttribute("Acount_no",Acount_no);  
		
					getServletContext().getRequestDispatcher("/welcome.jsp").forward(request, response);
					//getServletContext().getRequestDispatcher("/AccooutBilance.jsp").forward(request, response);
				}
				if(x1 == null)
				{
					//response.sendRedirect("AccountDetails.jsp");
					request.setAttribute("Acc_name",uname );
					
					getServletContext().getRequestDispatcher("/AccountDetails.jsp").forward(request, response);
				}
			}
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			response.sendRedirect("register.html");
			
		}
		
		
		
		
		
		
	}

}
