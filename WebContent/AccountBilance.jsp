
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Account Balance</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <style>
    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    .row.content {height: 550px}
    
    /* Set gray background color and 100% height */
    .sidenav {
      background-color: #f1f1f1;
      height: 100%;
    }
        
    /* On small screens, set height to 'auto' for the grid */
    @media screen and (max-width: 767px) {
      .row.content {height: auto;} 
    }
  </style>
</head>
<body>
 
<%@ page import="java.util.List" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>

<%!
public class amount_fetch {
	String sql = "select amount from amounts where account_no=?";
	String url = "jdbc:mysql://localhost:3306/bankRegister";
	String username = "root";
	String password = "";
	public String check(String account_no)
	{
		
		long account_nos = Long.parseLong(account_no);
	
		
		
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
		
			Connection con = DriverManager.getConnection(url,username,password);
			
			PreparedStatement st = con.prepareStatement(sql);
			
			st.setLong(1,account_nos);
			
			ResultSet rs = st.executeQuery();
		
			if(rs.next())
			{
				
				String amount = String.valueOf(rs.getInt("amount"));
				
				return amount;
			}
			
		
			
			
					
		}
		catch(Exception e)
		{
//			e.printStackTrace();
			
			System.out.println("no match"+e);
			
		}
	
		
		return null;
		
	//	return ar;
	}


}



%>
<%!

public class accountdetais {
	String sql = "select * from account where Acount=?";
	String url = "jdbc:mysql://localhost:3306/bankRegister";
	String username = "root";
	String password = "";
	public String[] check(String account_no)
	{
		
		long account_nos = Long.parseLong(account_no);
		String ar[] = new String[5];
		
		
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
		
			Connection con = DriverManager.getConnection(url,username,password);
			
			PreparedStatement st = con.prepareStatement(sql);
			
			st.setLong(1,account_nos);
			
			ResultSet rs = st.executeQuery();
		
			if(rs.next())
			{
				
				String Acount = String.valueOf(rs.getLong("Acount"));
				String Acc_name = rs.getString("Acc_name");
				String father_name = rs.getString("father_name");
				String pan_number = rs.getString("pancard");
				String addhaar = String.valueOf(rs.getLong("addhaar"));
				
				ar[0]=Acount;
				ar[1]=Acc_name;
				ar[2]=father_name;
				ar[3]=pan_number;
				ar[4]=addhaar;
				
			}
			
		
			
			
					
		}
		catch(Exception e)
		{
//			e.printStackTrace();
			
			System.out.println("no match"+e);
			
		}
	
		
		return ar;
		
	//	return ar;
	}


}


	
%>
<%!

public class AddressDataFetchs {
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
				return address;
				
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

	
%>


<%

AddressDataFetchs d2 = new AddressDataFetchs();
String[] res2 = d2.checks("7903630663");

%>



<nav class="navbar navbar-inverse visible-xs">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">Logo</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Dashboard</a></li>
        <li><a href="#">Account Balance</a></li>
        <li><a href="#">Withdrow Money</a></li>
        <li><a href="#">Deposite Money</a></li>
      </ul>
    </div>
  </div>
</nav>


<div class="container-fluid">
  <div class="row content">
    <div class="col-sm-3 sidenav hidden-xs">
      <h2>Logo</h2>
      <ul class="nav nav-pills nav-stacked">
       <li class="active"><a href="#section1">Dashboard</a></li>
        <li><a href="AccountBilance.jsp" class="btn btn-primary btn-block">Account Balance</a></li>
        <li><a href="WithdrownBilance.jsp" class="btn btn-primary btn-block">withdrawal Balance</a></li>
        <li><a href="DepositeBilance.jsp" class="btn btn-primary btn-block"> Deposited Balance </a></li>
		
      </ul><br>
      <form action="Fetchphoto" method="post">
      <button type="submit" class="btn btn-primary btn-block">photo</a></button>
      </form>
      <form action="FetchSign" method="post">
      <button type="submit" class="btn btn-primary btn-block"> Sign</a></button>
      </form>
      <form action="FetchAddhaar" method="post">
      <button type="submit" class="btn btn-primary btn-block">Aadhaar Card</a></button>
      </form>
      <form action="Fetchpan" method="post">
      <button type="submit" class="btn btn-primary btn-block"> Pan Card</a></button>
      </form>
      <button type="submit" class="btn btn-default"><a href="register.html"> Logout</a></button>
		<button type="submit" class="btn btn-primary">Back</button>
    </div>
    <br>
    
    <div class="col-sm-9">
      <div class="well">
        <h4>Dashboard</h4>
        <p>
        <%accountdetais d = new accountdetais();
        String[] res = d.check("7903630663");
        out.println(res[0]); %></p>
       <p align="right"> Balance : 
       <% amount_fetch amo = new amount_fetch();
       	String amos = amo.check("7903630663");
       out.println(amos +".00 /Rs");
       %>
        </p>
        
      </div>
      <div class="row">
        <div class="col-sm-3">
          <div class="well">
            <h4>Name </h4>
            <p><%accountdetais accn = new accountdetais();
        	String[] acc_name = accn.check("7903630663");
        	out.println(acc_name[1]); %></p> 
          </div>
        </div>
        <div class="col-sm-3">
          <div class="well">
            <h4>Father's/Garduan Name:</h4>
            <p><%out.println(acc_name[2]); %></p>
          </div>
        </div>
        <div class="col-sm-3">
          <div class="well">
            <h4>Addhaar Number</h4>
            <p><%out.println(acc_name[4]); %></p> 
          </div>
        </div>
        <div class="col-sm-3">
          <div class="well">
            <h4>Pan Number :</h4>
            <p><%out.println(acc_name[3]); %></p> 
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-sm-4">
          <div class="well">
          <h4> Local Address</h4>
            <p>Country : <%out.println(res2[1]); %></p>  
              <p>House No : <%out.println(res2[2]); %></p>
              <p>Near BY: <%out.println(res2[3]); %></p>
              <p>Post office : <%out.println(res2[4]); %></p>
              <p>State : <%out.println(res2[5]); %></p> 
              <p>Pin code : <%out.println(res2[6]); %></p>
          </div>
        </div>
        <div class="col-sm-4">
          <div class="well">
            <h4> Permanent Address </h4>
             <p>Country : <%out.println(res2[1]); %></p>  
              <p>House No : <%out.println(res2[7]); %></p>
              <p>Near BY: <%out.println(res2[8]); %></p>
              <p>Post office : <%out.println(res2[9]); %></p>
              <p>State :  <%out.println(res2[10]); %></p> 
              <p>Pin code : <%out.println(res2[11]); %></p>
              
          </div>
        </div>
        
      </div>
      
    </div>
  </div>
</div>

</body>
</html>
