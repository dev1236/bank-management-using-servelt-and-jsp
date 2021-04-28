<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Address</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">
    <link rel="stylesheet" href="vendor/nouislider/nouislider.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="css/style1.css">
</head>
<body>

    <div class="main">

        <div class="container">
            <div class="signup-content">
                <div class="signup-img">
                    <img src="images/form-img.jpg" alt="">
                    <div class="signup-img-content">
                        <h2>Application Form </h2>
                        <p>Account creation</p>
                    </div>
                </div>
                <div class="signup-form">
				<h3 align="center"> Application Form </h3> 
				<h4>..................................................................................................................................................................................................................................................................................................................................</h4>
						<form class="md-form" method="POST" action="FileUploadDBServlet" enctype="multipart/form-data">
						<div class="form-input">
							 
                                    <label for="first_name" class="required">Account no :
                                    <input type="text" name="account" id="first_name"   maxlength="10" value="<%= request.getAttribute("account_no") %>" />
                                </label></div>
							  <div class="file-field" width="100px">
								<div width="100px">
								  <img src="https://mdbootstrap.com/img/Photos/Others/placeholder.jpg" class="img-fluid" alt="example placeholder" width="100px" height="100px">
								</div>
								<div class="d-flex justify-content-center">
								  <div class="btn btn-mdb-color btn-rounded float-left">
									<span>Photo</span>
									<input type="file" name="photo" size="50"/>
								  </div>
								</div>
							  </div>
							  <div class="file-field" width="100px">
								<div width="100px">
								  <img src="https://mdbootstrap.com/img/Photos/Others/placeholder.jpg" class="img-fluid" alt="example placeholder" width="100px" height="100px">
								</div>
								<div class="d-flex justify-content-center">
								  <div class="btn btn-mdb-color btn-rounded float-left">
									<span>Sign</span>
									<input type="file" name="sign" size="50"/>
								  </div>
								</div>
							  </div>
							  <div class="file-field" width="100px">
								<div width="100px">
								  <img src="https://mdbootstrap.com/img/Photos/Others/placeholder.jpg" class="img-fluid" alt="example placeholder" width="100px" height="100px">
								</div>
								<div class="d-flex justify-content-center">
								  <div class="btn btn-mdb-color btn-rounded float-left">
									<span>Addhaar </span>
									<input type="file" name="addhaar" size="50"/>
								  </div>
								</div>
							  </div>
							  <div class="file-field" width="100px">
								<div width="100px">
								  <img src="https://mdbootstrap.com/img/Photos/Others/placeholder.jpg" class="img-fluid" alt="example placeholder" width="100px" height="100px">
								</div>
								<div class="d-flex justify-content-center">
								  <div class="btn btn-mdb-color btn-rounded float-left">
									<span>Pan card</span>
									<input type="file" name="pan" size="50"/>
								  </div>
								</div>
							  </div>
							  <div class="form-submit">
                            <input type="submit" value="Final Submit" class="submit" id="submit" name="submit" />
                            <input type="submit" value="Reset" class="submit" id="reset" name="reset" />
                        </div>
							</form>
                </div>
            </div>
        </div>

    </div>

    <!-- JS -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/nouislider/nouislider.min.js"></script>
    <script src="vendor/wnumb/wNumb.js"></script>
    <script src="vendor/jquery-validation/dist/jquery.validate.min.js"></script>
    <script src="vendor/jquery-validation/dist/additional-methods.min.js"></script>
    <script src="js/main.js"></script>
</body>
</html>