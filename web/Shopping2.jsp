<%@page
    import="java.sql.*"
    %>
    <!DOCTYPE html>
<html>
<head>
    <script>
i=0;
function slider()
{
   
var b=['f.jpg','e.jpg','d.jpg'];
var c=document.getElementById("home");
c.style.backgroundImage="url(images//"+b[i]+")";
i++;
if(i>2)
{
i=0;
}
setTimeout("slider()",2000);
}
</script>
  <title>Shopping places</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Sayohat Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="css/style.css" rel='stylesheet' type='text/css' />
<script src="js/jquery-1.11.0.min.js"></script>
<link href='http://fonts.googleapis.com/css?family=Dosis:200,300,400,500,600,700,800' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
<!---- start-smoth-scrolling---->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
				});
			});
		</script>

</head>
<body onload="slider()" >
   
<!--start-banner-->
	<div id="home"  style="background-image: url(images/e.jpg);height:1029px;width:1800px;">
          
		<div class="container" >
                    <div class="header" style="background-color: black;color:white;border: outset;border-width: 20px;border-color: white;">
                        <div class="logo" style="background-color: white;">
					<a href="index.jsp"><img src="images/log.png" alt=""></a>
				</div>
				<div class="navigation">
					<span class="menu"></span> 
					<ul class="navig">
	                                        <li><a href="index.jsp">Home</a></li>
						<li><a href="index.jsp?#about" >About</a></li>
						<li><a href="index.jsp?#services" >News</a></li>
						<li><a href="index.jsp?#Creators" >Creators</a></li>
						<li><a href="index.jsp?#contact" >Contact</a></li>
                                                <li><a href="login.jsp" >Log in</a></li>
                                                <li><a href="signup.jsp">Sign up</a></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			<div class="clearfix"></div>
			</div>
                   
                    <div style="height:auto;width:900px;border: outset;border-width: 20px;border-color: red;margin-left: 150px;color:yellowgreen;background-color:black;opacity:0.9;">
                    <%  
    try 
    {
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost/project","root","");
    Statement stmt=con.createStatement();
    ResultSet rs = stmt.executeQuery("select * from shop");
    out.println("<table class='border'>");
    while(rs.next())
    {
      String id = rs.getString("id");
      String name = rs.getString("name");
      String img = rs.getString("img");
     String path = ("images/"+img);
      
    out.println("<tr>");
    out.println("<td><a href='Shop1?id="+id+"'><img src='"+path+"' style='height:150px;width:250px;'></a></td>");
    out.println("<td>");
    out.println("<h1>"+name+"</h1>");
    out.println("</td>");
    out.println("</tr>");
    }
    out.println("</table>");
     }
   catch(Exception e)
   {
       System.out.println(e);
   }
        %>
        <a href='Shopping.jsp'><input type='submit' style='height:40px;margin-left:390px;margin-top: 27px;margin-bottom: 24px;width:90px;' value='BACK' /></a>		</div>
                      
	</div>
    
            </div>
        



			
                        <div class="footer-text" style="margin-top:0px;">
			<p>Design by <a href="http://teachmetrick.blogspot.in/p/about-us.html" target="_blank">Chandan puri</a></p>
		</div>
		<script type="text/javascript">
									$(document).ready(function() {
										/*
										var defaults = {
								  			containerID: 'toTop', // fading element id
											containerHoverID: 'toTopHover', // fading element hover id
											scrollSpeed: 1200,
											easingType: 'linear' 
								 		};
										*/
										
										$().UItoTop({ easingType: 'easeOutQuart' });
										
									});
								</script>
		<a href="#home" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
	</div>
	<!--footer-->
</body>
</html>