<%-- 
    Document   : login
    Created on : Aug 17, 2015, 3:09:37 PM
    Author     : Puri Saab
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>	
<head>
    <script src="js/jquery.js"></script>
    <script>
        $(document).ready(function(){
           $("#u1").change(function(){
            
          var value =  $("#u1").val();    
               $.ajax
               ({
               url:"Check",
               type:"get",
               data:{r:value},
               success:function(result)
               {
               $("#t1").html(result);    
               }
               });
           });
           
         });
        
    </script>
    <script>
        var a;
     function a()
            {
                var z = document.getElementById("t1").innerHTML;
        
        
        if(z!="Available")
                {
              a++;     
        
                    return false;
                    
                }
                if(a==1)
                {
                    return false;
                }
                else 
                {
                    return true;
                }
            }
    
    </script>
<title>Sign Up Here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<meta name="keywords" content="Transparent Organic Form Responsive Templates, Iphone Widget Template, Smartphone login forms,Login form, Widget Template, Responsive Templates, a Ipad 404 Templates, Flat Responsive Templates" />
<link href="css1/style1.css" rel='stylesheet' type='text/css' />
<!--web-fonts-->
<link href='http://fonts.googleapis.com/css1?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
<!--/web-fonts-->
</head>
<body>
	
<div class="two-forms">
	<div class="wrap">
            <div class="signup" style="margin-left:400px;margin-top:100px;  ">
			<h2>Signup<span>Form</span></h2>
			<div class="singup-info">
                            <form action="Signup" id="form1" method="post" onsubmit="return a();">
							<input type="text" class="text" name="fname" placeholder="FirstName"  >
								<input type="text" class="text" name="lname" placeholder="LastName" >
									<div class="users">
                                                                            <input type="text" id="u1" name="username" class="text" placeholder="UserName" ><p id="t1" style="color:red;"></p>
										<input type="text" name="email" class="text" placeholder="Email" >
										<input type="password"name="password" placeholder="Password">
                                                                                
                                                                                <select name="select" style="border:0px;background-color: #F0F0F0;margin-top:14px;height:50px;width:650px;">
                                                                                    <option selected disabled>Please Select A Security Question?</option>
                                                                                    <option>What is your pet name?</option>
                                                                                    <option>What is your class teacher name?</option>
                                                                                    <option>What is your favorite color?</option>
                                                                                    <option>What is your last name?</option>
                                                                                    
                                                                                    <span class="caret"></span>
                                                                                </select>  
                                                                                <input type="text" name="answer"  style="border:0px;background-color: #F0F0F0;margin-top:14px;height:50px;width:650px;"name="answer" placeholder="   Type your answer here.">
									</div>
						
						<div class="p-container">
											<label class="checkbox"><input type="checkbox" name="checkbox" checked><i> </i>I Agree to the terms of use</label>
								</div>
								<input type="submit" onclick="myFunction()" value="signup" >
								<div class="clear"> </div>
								<p>Have an account with us?<a href="login.jsp">Login here</a></p>
								<div class="clear"> </div>
			</form>	</div>
                </body>
</html>


