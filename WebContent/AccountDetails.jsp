<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Order Form</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material1.css">
    <link rel="stylesheet" href="fonts/material-icon/css/mm2.css">
    <link rel="stylesheet" href="vendor/nouislider/nouislider.min.css">

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
                    <form  class="register-form" id="register-form" action="AccountDetails"  method="POST">
					
						<h3> Account Type : </h3>
						
					 <div class="select-list">
                                        <select name="meal_preference" id="meal_preference">
											<option value="Select Item">Select Account Type</option>
                                            <option value="General">General </option>
                                            <option value="Saving">Saving</option>
                                            <option value="Current">Current</option>
                                        </select>
                                    </div>
	                      <div class="form-row">
                            <div class="form-group">
							 <div class="form-input">
                                    <label for="first_name" class="required">Name</label>
                                    <input type="text" name="name" value="<%=request.getAttribute("Acc_name")%>" id="first_name" />
                                </div>
								<div class="form-input">
                                    <label for="first_name" class="required">Father's Name</label>
                                    <input type="text" name="father_name" id="first_name" />
                                </div>
                                <div class="form-input">
                                    <label for="first_name" class="required">Date of Birth</label>
                                    <input type="date" value="1980-01-01" name="date" id="first_name" />
                                </div>
                                
                                               
                                <div class="form-input">
                                    <label for="email" class="required">Email</label>
                                    <input type="text" name="email" id="email" />
                                </div>
                                <div class="form-input">
                                    <label for="phone_number" class="required">Phone number</label>
                                    <input type="text" name="phone_number" id="phone_number"  maxlength="10"  />
                                </div>
								
                            </div>
                            <div class="form-group">
                                 <div class="form-select">
                                    <div class="label-flex">
                                        <label for="meal_preference">Gender</label>
                                     
                                    </div>
									<div class="form-radio-group">            
                                        <div class="form-radio-item">
                                            <input type="radio" name="gender" value="male" id="cash" checked>
                                            <label for="cash" >Male</label>
                                            <span class="check"></span>
                                        </div>
                                        <div class="form-radio-item">
                                            <input type="radio" name="gender" value="female" id="cheque">
                                            <label for="cheque">Female</label>
                                            <span class="check"></span>
                                        </div>
                                        
                                    </div>
                                   
                                </div>
					
                               
                                    <div class="label-flex">
                                        <label for="payment">Pan</label>
                                        <input type="text" name="pancard" id="chequeno" />
                                    </div>
                               
								<div class="form-input">
                                    <label for="first_name" class="required" >Addhaar Number</label>
                                    <input type="text" name="addhaar" id="first_name" minlength="12" maxlength="12" />
                                </div>
                                <div class="form-input">
                                    <label for="blank_name">Religion</label>
                                    <input type="text" name="Religion" id="blank_name" />
                                </div>
                                <div class="form-input">
                                    <label for="payable">Nationality.</label>
                                    <input type="text" name="nationality" id="payable" />
                                </div>
                            </div>
                        </div>
                        
                        <div class="form-submit">
                            <input type="submit" value="Next" class="submit" id="submit" name="submit" />
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