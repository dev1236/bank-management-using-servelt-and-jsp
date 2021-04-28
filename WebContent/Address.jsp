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
                    <form  method="POST" class="register-form" id="register-form" action="Address_details">
					<div class="form-input">
							 
                                    <label for="first_name" class="required">Account no :
                                    <input type="text" name="account" id="first_name"   maxlength="10" value="<%= request.getAttribute("account_no") %>" />
                                </label></div>
						<h3> Address  : </h3>
						
					 <div class="select-list">
                                        <select name="country" id="meal_preference">
											<option value="Select Item">Select country </option>
                                            <option value="India">India </option>
                                            <option value="Austerila">Austerila </option>
                                            <option value="America/usa">Aerica/USA</option>
											<option value="japan">Japan</option>
                                            <option value="Korera">Korea</option>
										 </select>
                                    </div>
                                    
	
                        <div class="form-row">
                            <div class="form-group">
							<h3 align="center"> Local Address </h3> 
							 <div class="form-input">
							 
                                    <label for="first_name" class="required">House no/Flat no</label>
                                    <input type="text" name="l_house_no" id="first_name"   maxlength="10" />
                                </div>
								<div class="form-input">
                                    <label for="first_name" class="required">Near By</label>
                                    <input type="text" name="street" id="first_name" />
                                </div>
                                <div class="form-input">
                                    <label for="first_name" class="required">Post Office</label>
                                    <input type="text" name="l_post_office" id="first_name" />
                                </div>
                                
                                 <div class="form-input">
                                    <label for="first_name" class="required">State </label>
                                    <input type="text" name="l_state" id="first_name" />
                                </div>
                                <div class="form-input">
                                    <label for="phone_number" class="required">Pin Code</label>
                                    <input type="text" name="pin_code" id="phone_number"  maxlength="6" />
                                </div>
								
                            </div>
                            <div class="form-group">
                                 <div class="form-select"><h3 align="center">Parmanent Address </h3> 
                                   <div class="form-input">
							 
                                    <label for="first_name" class="required">House no/Flat no</label>
                                    <input type="text" name="p_house_no" id="first_name"  maxlength="4" />
                                </div>
									<div class="form-input">
                                    <label for="first_name" class="required">Near By</label>
                                    <input type="text" name="p_nearby" id="first_name" />
                                </div>
                                </div>
								
                                <div class="form-input">
                                    <label for="first_name" class="required">Post Office</label>
                                    <input type="text" name="p_post" id="first_name" />
                                </div>
                                <div class="form-input">
                                    <label for="first_name" class="required">State </label>
                                    <input type="text" name="p_state" id="first_name" />
                                </div>
								<div class="form-input">
                                    <label for="phone_number" class="required">Pin Code</label>
                                    <input type="text" name="p_pin_code" id="phone_number"  maxlength="6"  />
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