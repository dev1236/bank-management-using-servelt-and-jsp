

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title> Account Details</title>
  <meta charset="utf-8">
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <style>
  
  
  
  /* https://www.w3schools.com/bootstrap/bootstrap_templates.asp  (template of dahsboard ) */
  
  
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

  
<a href="AccountBilance.jsp"></a>  
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
        <li><a href="#">Account Bilance</a></li>
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
      <button type="submit" class="btn btn-primary btn-block">photo</button>
      </form>
      <form action="FetchSign" method="post">
      <button type="submit" class="btn btn-primary btn-block"> Sign</button>
      </form>
      <form action="FetchAddhaar" method="post">
      <button type="submit" class="btn btn-primary btn-block">Aadhaar Card</button>
      </form>
      <form action="Fetchpan" method="post">
      <button type="submit" class="btn btn-primary btn-block"> Pan Card</button>

      </form>
            <button type="submit" class="btn btn-default"><a href="register.html"> Logout</a></button>
		<button type="submit" class="btn btn-primary">Back</button>
    </div>
    <br>
    
    <div class="col-sm-9">
      <div class="well">
        <h4>Dashboard</h4>
        <p>Account Number  :<%=request.getAttribute("Account_no")%></p>
       
        
      </div>
      <div class="row">
        <div class="col-sm-3">
          <div class="well">
            
            <p>name of the Accountant</p> 
            <p><%=request.getAttribute("Acc_name")%></p>
          </div>
        </div>
        <div class="col-sm-3">
          <div class="well">
            <h4>Father's/Garduan Name:</h4>
           <p> <%=request.getAttribute("father_name")%> </p>
          </div>
        </div>
        <div class="col-sm-3">
          <div class="well">
            <h4>Addhaar Number</h4>
            <p> <%=request.getAttribute("addhaar")%></p> 
          </div>
        </div>
        <div class="col-sm-3">
          <div class="well">
            <h4>Pan Number :</h4>
            <p> <%=request.getAttribute("pan_number")%></p> 
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-sm-4">
          <div class="well">
          <h4> Local Address </h4>
            <p>Country : <%=request.getAttribute("Country")%></p> 
       		<p>House no : <%=request.getAttribute("l_ouse_no")%></p> 
       		<p>Near By :<%=request.getAttribute("l_nearby")%></p> 
       		<p>Post Office :<%=request.getAttribute("l_postr")%></p> 
       		<p>State :<%=request.getAttribute("l_state")%></p> 
       		<p>Pin code :<%=request.getAttribute("l_pincode")%></p> 
          </div>
        </div>
        <div class="col-sm-4">
          <div class="well">
            <h4> Parmanent Address </h4>
            <p>Country : <%=request.getAttribute("Country")%></p> 
       		<p>House no : <%=request.getAttribute("p_ouse_no")%></p> 
       		<p>Near By :<%=request.getAttribute("p_nearby")%></p> 
       		<p>Post Office :<%=request.getAttribute("p_post")%></p> 
       		<p>State :<%=request.getAttribute("p_state")%></p> 
       		<p>Pin code :<%=request.getAttribute("p_pincode")%></p> 
          </div>
        </div>
        <div class="col-sm-4">
          <div class="well">
            <p>Text</p> 
            <p>Text</p> 
            <p>Text</p> 
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-sm-8">
          <div class="well">
            <p>Text</p> 
          </div>
        </div>
        <div class="col-sm-4">
          <div class="well">
            <p>Text</p> 
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

</body>
</html>
