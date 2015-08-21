<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<title>Smart City:The city beautifull Chandigarh</title>
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

<!--start-smoth-scrolling-->
</head>
<body>
<!--start-banner-->
	<div class="banner" id="home">
		<div class="container">
			<div class="header" style="background-color: black;color:white;border: outset;border-width: 20px;border-color: grey;">
                        <div class="logo" style="background-color: white;">
					<a href="index.jsp"><img src="images/log.png" alt=""></a>
				</div>
				<div class="navigation">
					<span class="menu"></span> 
					<ul class="navig">
						<li><a href="index.jsp" class="active scroll">Home</a></li>
						<li><a href="#about" class="scroll">About</a></li>
						<li><a href="#services" class="scroll">News</a></li>
						<li><a href="#Creators" class="scroll">Creators</a></li>
						<li><a href="#contact" class="scroll">Contact</a></li>
                                                <li><a href="login.jsp" >Log in</a></li>
                                                <li><a href="signup.jsp">Sign up</a></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="banner-bottom">
				<ul>
					<li>
						<div class="travel-one travel">
							<h1>Chandigarh</h1>
							<p>Chandigarh, also known as The City Beautiful, is a city and a union territory in the northern part of India that serves as the capital of the states of Punjab and Haryana. As a union territory, the city is ruled directly by the Union Government of India and is not part of either state.The city of Chandigarh was the first planned city in India post-independence in 1947 and is known internationally for its architecture and urban design.</p>
							
						</div>
					</li>
					<li>
						<div class="travel-one travel-two">
							<h1>History</h1>
							<p>Chandigarh is located near the Sivalik Hills. Shown here is the Open Hand Monument with the Shivaliks visible in the background.After the partition of India in 1947, the former British province of Punjab was also split between east Punjab in India and west Punjab in Pakistan.The Indian Punjab required a new capital city to replace Lahore, which became part of Pakistan during the partition.So, the government carved out Chandigarh of nearly 50 Pwadhi speaking villages of the then state of East Punjab, India.</p>
							<div class="b-btn">
                                                        
							<a href="History.jsp">Read More</a>
							</div>
						</div>
					</li>
					<div class="clearfix"></div>
				</ul>
			</div>
		</div>
	</div>	
	<!-- script-for-menu -->
		 <script>
				$("span.menu").click(function(){
					$(" ul.navig").slideToggle("slow" , function(){
					});
				});
		 </script>
		 <!-- script-for-menu -->	
	<!--end-banner-->
	<!-- requried-jsfiles-for owl -->
		<link href="css/owl.carousel.css" rel="stylesheet">
		<script src="js/owl.carousel.js"></script>
			<script>
				$(document).ready(function() {
					$("#owl-demo").owlCarousel({
						items : 5,
						lazyLoad : true,
						autoPlay : true,
						pagination : false,
					});
				});
			</script>
		<!-- //requried-jsfiles-for owl -->
		<!--light-box-files -->
		<script src="js/jquery.chocolat.js"></script>
		<link rel="stylesheet" href="css/chocolat.css" type="text/css" media="screen" charset="utf-8" />
		<!--light-box-files -->
		<script type="text/javascript" charset="utf-8">
		$(function() {
			$('#example1 a').Chocolat();
		});
		</script>

	<!--project-->
		<div class="project">
		<div id="example1">
			<div id="owl-demo" class="owl-carousel text-center">
				
 <%  
    try 
    {
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost/project","root","");
    Statement stmt=con.createStatement();
    ResultSet rs = stmt.executeQuery("select * from scroll");
    while(rs.next())
    {
      String id = rs.getString("S.no.");
      String img = rs.getString("image");
      String path = ("images/"+img);
      String Sum =rs.getString("Summary");
      
      out.println ("<div class='item'>");
     out.println ("<a href='"+path+"' title='"+Sum+"'>");
     out.println ("<img class='lazyOwl' data-src='"+path+"' alt='name'>");
     out.println("</a>");
     out.println("<div class='project-name'>");
     out.println("<p>"+Sum+"</p>");
     out.println("</div>");
     out.println("</div>");
      //out.println(path);
      //out.println("<a href='Asd?name="+id+"'><img src='images\\"+img+"'></a>");
      }
     }
   catch(Exception e)
   {
       System.out.println(e);
   }
        %>
    
					
				
				
				</div>
				
				</div>
			</div>
	
	<!--project-->
	<!--welcome-->
	<div class="welcome" id="about">
		<div class="container">
			<div class="welcome-top heading">
                            
				<h3>WELCOME</h3>
				<p>Welcome to the city beautifull Chandigarh. This is the best-planned city in India, with architecture which is world-renowned, and a quality of life, which is unparalleled. As the capital of the states of Punjab and Haryana, and the Union Territory of Chandigarh it is a prestigious city. The face of modern India, Chandigarh, is the manifestation of a dream that Pt. Jawahar Lal Nehru envisaged and Le Corbusier executed. </p>
			</div>
			<div class="welcome-bottom">
				<div class="col-md-4 welcome-left">
					<span class="ship"></span>
                                     
					<h4>Hotel</h4>
					<p>Breakfast,Lunch,Dinner,Buffets,Rooms etc.</p>
                                        <div class="b-btn">
								<a href="Hotel.jsp">Read More</a>
							</div>
				</div>
				<div class="col-md-4 welcome-left">
					<span class="air"></span>
					<h4>Entertainment</h4>
					<p>Club,Movie,Gaming etc.</p>
                                        <div class="b-btn">
								<a href="Entertainment.jsp">Read More</a>
							</div>
				</div>
				<div class="col-md-4 welcome-left">
					<span class="bus"></span>
					<h4>Shopping</h4>
					<p>Famous places for shopping,malls,shops etc.</p>
				<div class="b-btn">
								<a href="Shopping.jsp">Read More</a>
							</div>
                                </div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--welcome-->
	<!--services-->
	<div class="services" id="services">
		<div class="container">
			<div class="services-top">
				<div class="col-md-8 services-left">
					<img src="images/s-1.png" alt="" />
					<div class="best">
						<h3>Best<span> In</span> Chandigarh</h3>
						<h4>Elante Mall</h4>
                                                <p>This is the most beautifull crowded place in chandigarh.</p>
                                                                                             
					</div>
				</div>
                            </div>
				<div class="col-md-4 services-right">
					<div class="s-1" >
						<span></span>
                                                <div class="service-one" style="border:outset;border-color: black;height:385px;margin-top:-60px;  ">
   
                                                    <h1 style="margin-left:55px;">TOP NEWS</h1>

                                                    <%                                  try{
                                                      
                      
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost/project","root","");
    Statement stmt=con.createStatement();
    
    ResultSet rs = stmt.executeQuery("select * from news order by id Desc limit 9");
    out.println("<marquee direction='up' scrollamount='2' style='height:340px;'>");
    int i=0;
    while(rs.next())
    {
        
      i++;
      int val = rs.getInt("id");
      String news = rs.getString("data");
      
      out.println("<b>"+i+")</b><a href='News1?value="+val+"'>"+news+"</a></br>");
    }
   out.println("</marquee>");
    }
    catch(Exception e)
     {
       System.out.println(e);
   }
                                                    %>
    
					</div>
				</div>
                                </div>
                </div>
        </div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--services-->
	<!--news-->
	
	
   <script src="js/responsiveslides.min.js"></script>
	<!--Creators-->
	<div class="testimonials" id="Creators">
		<div class="container">
			<div class="testimonials-top heading">
				<h3>Creators</h3>
			</div>
			<div class="testimonials-bottom">
				<ul class="ch-grid">
					<li>
						<div class="ch-item ch-img-1">				
							<div class="ch-info-wrap">
								<div class="ch-info">
									<div class="ch-info-front ch-img-1"></div>
									<div class="ch-info-back">
										<h3>Smart-city</h3>
										<p>by Chandan Puri</p>
					
									</div>	
								</div>
							</div>
						</div>
					</li>
					<li>
						<div class="ch-item ch-img-2">				
							<div class="ch-info-wrap">
								<div class="ch-info">
									<div class="ch-info-front ch-img-2"></div>
									<div class="ch-info-back">
										<h3>Smart-city</h3>
										<p>by Navjot Singh</p>
					
									</div>	
								</div>
							</div>
						</div>
					</li>
					<li>
						<div class="ch-item ch-img-3">				
							<div class="ch-info-wrap">
								<div class="ch-info">
									<div class="ch-info-front ch-img-3"></div>
									<div class="ch-info-back">
										<h3>Smart-city</h3>
										<p>by Deepam Sehgal</p>
					
									</div>	
								</div>
							</div>
						</div>
					</li>
				</ul>
			</div>
		</div>
	</div>
	
	<!--testimonials-->
        <div class="testimonials" id="testimonials" style="margin-top: -150px;">
		<div class="container">
			
		</div>
             <h1 align="Center"><b>Map<b></h1>
	</div>
	<!--testimonials-->
	<link rel="stylesheet" type="text/css" href="css/common.css" />
	<script type="text/javascript" src="js/modernizr.custom.79639.js"></script> 
	<!--map-->
	<div class="map" style="margin-top:-65px;">
           
		<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d109750.89750597191!2d76.76641439999999!3d30.726396200000003!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390fed0be66ec96b%3A0xa5ff67f9527319fe!2sChandigarh!5e0!3m2!1sen!2sin!4v1438838868962" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
	</div>
	<!--map-->
	<!--footer-->
	<div class="footer" id="contact">
		<div class="container">
			<div class="footer-top heading">
				<h3>CONTACT US</h3>
			</div>
				<div class="footer-bottom">
					<div class="col-md-4 footer-left">
						<div class="f-1">
							<span class="glyphicon glyphicon-earphone" aria-hidden="true"></span>
							<p>+91 9034144141</p>
						</div>
						<div class="f-1">
							<a href="#"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span></a>
							<p><a href="mailto:example@email.com">chandanpuri041@gmail.com</a></p>
						</div>
						<div class="f-1">
							<span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span>
                                                        <p>7-Phase,Industrial Area,Chandigarh.</p>
						</div>
					</div>
					<div class="col-md-8 footer-right">
                                            <form action="Query" method="post" >                                            
						<input type="text" name="name" value="Your Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Your Name';}"/>
						<input type="text" name="email" value="Your Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Your Email';}"/>
						<textarea name="message" value="Your Message" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Your Message';}">Your Message</textarea>
						<div class="contact-but">
							
							
                                                             <input type="submit" style="height: 40px;width: 90px;" value="SEND" />
							</form>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
		</div>
		<div class="footer-text">
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
		<a href="#home" id="toTop" class="scroll" style="display: block;"> 
                    <span id="toTopHover" style="opacity: 1;"></span></a>
	</div>
	<!--footer-->
</body>
</html>