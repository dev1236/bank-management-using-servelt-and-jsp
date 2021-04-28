package net.codejava.upload;
//https://www.codejava.net/coding/upload-files-to-database-servlet-jsp-mysql 
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
 
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
 
@WebServlet("/FileUploadDBServlet")
@MultipartConfig(maxFileSize = 16177215)    // upload file's size up to 16MB
public class FileUploadDBServlet extends HttpServlet {
     
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	// database connection settings
    private String dbURL = "jdbc:mysql://localhost:3306/bankRegister";
    private String dbUser = "root";
    private String dbPass = "";
     
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        // gets values of text fields
        
    	Long account_no =Long.parseLong(request.getParameter("account"));
		System.out.println("accunt no" +account_no);
        InputStream inputStream = null; // input stream of the upload file
        InputStream inputStream2 = null;
        InputStream inputStream3 = null; // input stream of the upload file
        InputStream inputStream4 = null;
        // obtains the upload file part in this multipart request
        Part filePart = request.getPart("photo");
        Part filePart2 = request.getPart("sign");
        Part filePart3 = request.getPart("addhaar");
        Part filePart4 = request.getPart("pan");
        if (filePart != null) {
            // prints out some information for debugging
            System.out.println(filePart.getName());
            System.out.println(filePart.getSize());
            System.out.println(filePart.getContentType());
             
            // obtains input stream of the upload file
            inputStream = filePart.getInputStream();
        }
        if (filePart2 != null) {
            // prints out some information for debugging
            System.out.println(filePart2.getName());
            System.out.println(filePart2.getSize());
            System.out.println(filePart2.getContentType());
             
            // obtains input stream of the upload file
            inputStream2 = filePart2.getInputStream();
        }
        if (filePart3 != null) {
            // prints out some information for debugging
            System.out.println(filePart3.getName());
            System.out.println(filePart3.getSize());
            System.out.println(filePart3.getContentType());
             
            // obtains input stream of the upload file
            inputStream3 = filePart3.getInputStream();
        }
         
        if (filePart4 != null) {
            // prints out some information for debugging
            System.out.println(filePart4.getName());
            System.out.println(filePart4.getSize());
            System.out.println(filePart4.getContentType());
             
            // obtains input stream of the upload file
            inputStream4 = filePart4.getInputStream();
        }
        	
         
        Connection conn = null; // connection to the database
        String message = null;  // message will be sent back to client
        Balanceudate b = new Balanceudate();
        b.check(account_no);
        System.out.println("balance update ");
        
        try {
            // connects to the database
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            conn = DriverManager.getConnection(dbURL, dbUser, dbPass);
 
            // constructs SQL statement
            String sql = "INSERT INTO uploaddocument (photo,sign,addhaar,pan,acount) values (?, ?,?,?,?)";
            PreparedStatement statement = conn.prepareStatement(sql);
          
             
            if (inputStream != null) {
                // fetches input stream of the upload file for the blob column
                statement.setBlob(1, inputStream);
               
            }
            
            if (inputStream2 != null) {
                // fetches input stream of the upload file for the blob column
                statement.setBlob(2, inputStream2);
               
            }
            if (inputStream2 != null) {
                // fetches input stream of the upload file for the blob column
                statement.setBlob(3, inputStream3);
               
            }
            if (inputStream2 != null) {
                // fetches input stream of the upload file for the blob column
                statement.setBlob(4, inputStream4);
               
            }
           
            statement.setLong(5,account_no);
            
            // sends the statement to the database server
            int row = statement.executeUpdate();
            if (row > 0) {
                message = "congrts";
            }
           // response.sendRedirect("AccountDetails.html");
        } catch (SQLException ex) {
            message = "ERROR: " + ex.getMessage();
            ex.printStackTrace();
        } finally {
            if (conn != null) {
                // closes the database connection
                try {
                    conn.close();
                } catch (SQLException ex) {
                    ex.printStackTrace();
                }
            }
        
            // sets the message in request scope
            request.setAttribute("Message", message);
            
             
            // forwards to the message page
            getServletContext().getRequestDispatcher("/register.html").forward(request, response);
        }
    }
}