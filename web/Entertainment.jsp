<%@page
    import="java.sql.*"
    %>
    <!DOCTYPE html>
<html>
<head>
   
<title>Entertainment</title>
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
	<div id="home"  style="background-image: url(images/back.jpg);height:1380px;width:auto;">
          
		<div class="container">
			<div class="header" style="background-color: black;color:white;border: outset;border-width: 20px;border-color: grey;">
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
			</div>
               
        
                  
                    <%  
    try 
    {
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost/project","root","");
    Statement stmt=con.createStatement();
    ResultSet rs = stmt.executeQuery("select * from enter limit 0,5");
    out.println("<div style='height:1150px;width:600px;margin-left:-70px;'>;");
    out.println("<table class='border' style='float:left;'>");
    while(rs.next())
    {
      String id = rs.getString("id");
      String name = rs.getString("name");
      String address = rs.getString("address");
      String img = rs.getString("image");
      int l = rs.getInt("pasand");
      int dl = rs.getInt("Napasand");
     
      String path = ("images/"+img);
      
    out.println("<tr>");
    out.println("<td><a href='Entertainment?id="+id+"'><img src='"+path+"' style='height:150px;width:250px;'></a></td>");
    out.println("<td>");
    out.println("<h1>"+name+"</h1>");
     out.println("</td>");
     out.print("</tr>");
       out.print("<tr>");
      out.print("<td colspan='2'>");
      out.print("<a href='Like?id="+id+"'><button name='b1' value='like'><img src='images/likee.png'></button></a><label style='color:black;background-color:white;'>"+l+"</label>");
      out.print("<a href='Dislike?value="+id+"'><button name='b2' value='dislike' style:'margin-left:182px;'><img src='images/dislikee.png'></button></a><label style='color:black;background-color:white;'>"+dl+"</label>");
              out.print("</td>");
    out.print("</tr>");
   out.println("</tr>");
       out.print("<td colspan='2'>");
     out.print("<h3 style='margin-left:250px;'>"+address+"</h3>");
  
    out.print("</tr>");
   out.println("</tr>");
       }
       out.println("</table>");
      out.println("</div>");
      out.println("<div style='height:1150px;width:600px;margin-top:-1150px;margin-left:640px;'>");
     ResultSet rs1 = stmt.executeQuery("select * from enter limit 5,10");
    out.println("<table class='border' style='float:left;'>");
    while(rs1.next())
    {
      String id = rs1.getString("id");
      String name = rs1.getString("name");
      String address = rs1.getString("address");
      String img = rs1.getString("image");
  int m =  rs1.getInt("pasand");
  int n =  rs1.getInt("Napasand");
      String path = ("images/"+img);
      
    out.println("<tr>");
    out.println("<td><a href='HotelDemo?id="+id+"'><img src='"+path+"' style='height:150px;width:250px;'></a></td>");
    out.println("<td>");
    out.println("<h1>"+name+"</h1>");
     out.println("</td>");
     out.print("</tr>");
       out.print("<tr>");
      out.print("<td colspan='2'>");
       out.print("<a href='Like?id="+id+"'><button name='b1' value='like'><img src='images/likee.png'></button></a><label style='color:black;background-color:white;'>"+m+"</label>");
      out.print("<a href='Dislike?value="+id+"'><button name='b2' value='dislike' style:'margin-left:182px;'><img src='images/dislikee.png'></button></a><label style='color:black;background-color:white;'>"+n+"</label>");        
      out.print("</td>");
    out.print("</tr>");
   out.println("</tr>");
       out.print("<td colspan='2'>");
     out.print("<h3 style='margin-left:250px;'>"+address+"</h3>");
  
    out.print("</tr>");
   out.println("</tr>");
       }
    out.println("</div>");
          out.println("</table>");
     }
                
                       
   catch(Exception e)
   {
       System.out.println(e);
   }
        %>
  
			</div>
          
            <a href='index.jsp' ><button style="margin-top: 0px;margin-bottom: 0px;margin-left:490px; "><img src="images\back.gif"></button></a>
	</div>
    
            




			
                        <div class="footer-text" style="margin-top:11px;">
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