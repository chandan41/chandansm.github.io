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
   
var b=['d.jpg','e.jpg','f.jpg'];
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
  <title>Shopping</title>
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
<body onload="slider()">
   
<!--start-banner-->
	<div id="home"  style="background-image: url(images/d.jpg);height:900px;width:auto;">
          
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
                   <div style="height:750px;width:900px;margin-left: 150px;border: outset;border-width: 20px;border-color:#FFB232 ;color:yellowgreen;background-color:black;opacity:0.9;">
                    
		     <h1 align="center">Best Places For Shopping in Chandigarh</h1>
           <p>
Chandigarh, one of the most planned cities in India is an important commercial hub of the state of Punjab. 
Numerous shopping malls spread in different corners abounds the city of Chandigarh. 
The shopping malls in Chandigarh brilliantly cater to the needs of the shopaholics and the fashion lovers.
Ranging from the famous brands like Prada Gucci Levis, and Pepe to the traditional local products,
you would get it all the Chandigarh shopping malls. The shopping centres in Chandigarh would surely take you through
a unique shopping experience. While shopping in Chandigarh, you must check out the colorful and beautiful Punjabi dupattas, jutis, 
juices and jams.
Some of the places in Chandigarh famous for the important shopping items that you might look are:
<table style=margin-left:150px;">
    <tr>
        <td>
Sector 14, 17, 19, 22</td><td>      ------> Book Shops
</td>
</tr>
    <tr>
        <td>
Sector 26</td><td>                  ------> Vegetables, Fruits, and Grains
</td>
</tr>
<tr>
<td>
Sector 34, 7 (Madhya Marg)</td><td> ------> Furniture
</td>
</tr>
<tr>
<td>Sector 17, 22</td><td>          ------> Electronic Goods
    </td>
</tr>
<tr>
<td>
Sector 9, 17, and 22,</td><td>      ------> Garment and Shoes
</td>
</tr>
<tr>
<td>
Sector 21 </td><td>                 ------> fish and meat
</td>
</tr>
<tr>
<td>
Sector 11, 16, 22  </td><td>        ------> medical shops
</td>
</tr>
<tr>
<td>
Sector 7, 18, 22 </td><td>          ------> Hardware
</td>
</tr>
<tr>
<td>
Industrial area </td><td>           ------> vehicals & Steel Furniture Industries
</td>
</tr>
<tr>
<td>
Sector 17, 22, 35</td><td>          ------> Jewellery
</td>
</tr>
</table>
<a href="Shopping2.jsp"><b><h1>For some most popular shopping places in Chandigarh click here...</h1></b></a>

 <a href='index.jsp' ><button style="margin-top: 50px;margin-left:330px; "><img src="images\back.gif"></button></a>
       
                </div>
                     
        
        </div>
        </div>




			
                        <div class="footer-text" style="margin-top: 0px;">
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