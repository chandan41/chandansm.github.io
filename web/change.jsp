ac

<%-- 
    Document   : signup
    Created on : Aug 17, 2015, 3:09:47 PM
    Author     : Puri Saab
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>	
<head>
    <script>
        function a()
        {
         var a=document.getElementById("p1").value;
         var b=document.getElementById("p2").value;
         
         if(a!==b)
         {
             alert("Password do not match");
         return false;
        }
        
        }
        </script>
    <title>Change your password</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<meta name="keywords" content="Transparent Organic Form Responsive Templates, Iphone Widget Template, Smartphone login forms,Login form, Widget Template, Responsive Templates, a Ipad 404 Templates, Flat Responsive Templates" />
<link href="css1/style1.css" rel='stylesheet' type='text/css' />
<!--web-fonts-->
<link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
<!--/web-fonts-->a
</head>
<body>
<%
HttpSession s = request.getSession();
%>
		</div>
		<div class="login" style="width:700px;margin-left:400px;margin-top:200px;margin-right:600px;">
                    <h1><span></span></h1></br>
			<div class="login-info" >
                            <form action="Change" method="post" onsubmit="return a()" >
				 <input type="text" CLASS="TEXT" id="p1" name="password"  style="border:0px; background-color: #F0F0F0;margin-top:0px;height:50px;width:650px;"name="retype" placeholder="   Type your new password.">
                                 <input type="text" CLASS="TEXT" id="p2" name="retype"  style="border:0px; background-color: #F0F0F0;margin-top:14px;height:50px;width:650px;"name="retype" placeholder="   Retype your password.">
                                 <div class="btns">
                                    <input type="submit"> </div>
                              
			</div>
		</div>
		<div class="clear"> </div>

		<div class="copy-right">
					
                </form>
                                                    
</div>

</body>
</html>