<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<title>OCCI/REST Best Principles</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="assets/css/main.css" />
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
		<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
		<!-- BOOTSTRAP STYLES-->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
     <!-- FONTAWESOME STYLES-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
        <!-- CUSTOM STYLES-->
    <link href="assets/css/custom.css" rel="stylesheet" />
     <!-- GOOGLE FONTS-->
   <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
		<script type='text/javascript'>//<![CDATA[
window.onload=function(){
document.getElementById('get_file').onclick = function() {
    document.getElementById('my_file').click();
};
}//]]> 

</script>
		
	</head>
	<body>

		<!-- Header -->
			<div id="header">

				<div class="top">

					<!-- Logo -->
						<div id="logo">
							<span class="image avatar48"><img src="images\tool.jpg" alt="" /></span>
							<h1 id="title">ORAP-DT</h1>
							<p>OCCI/REST Antipatterns and patterns Detection</p>
						</div>

					
						<nav id="nav">
							
							<ul>
								<li><a href="Welcome.jsp" id="top-link" class="skel-layers-ignoreHref"><span class="icon fa-home">Welecome</span></a></li>
								<li><a href="Core.jsp" id="portfolio-link" class="skel-layers-ignoreHref"><span class="icon fa-th">Load/Realod FILE</span></a></li>
								<li><a href="#detect" id="about-link" class="skel-layers-ignoreHref"><span class="icon fa-th">Detect (Anti) Patterns</span></a></li>
								<li><a href="Contact.jsp" id="contact-link" class="skel-layers-ignoreHref"><span class="icon fa-envelope">Contact</span></a></li>
								
							</ul>
						</nav>

				</div>
				
				

				<div class="bottom">

					<!-- Social Icons -->
						<ul class="icons">
							
							<li><a href="#" class="icon fa-github"><span class="label">Github</span></a></li>
							<li><a href="#" class="icon fa-dribbble"><span class="label">Dribbble</span></a></li>
							<li><a href="#" class="icon fa-envelope"><span class="label">Email</span></a></li>
						</ul>

				</div>

			</div>

		<!-- Main -->
			<div id="main">

			
<!-- Portfolio -->
					<section id="portfolio" class="two" style="height: 678px; ">
						<div class="container">	
						<div id="ok" style="background-color: black;"> <h2 align="left" style="color: white;">Load Semantc Cloud REST API File</h2></div>
								<div id=div1" style="border-color: black;border:solid; height: 272px">
								<p align="left"> Choose the Onology File: </p>
								<p align="left"> <input type="text" name="file_name" id="file_name" style="width: 699px; height: 47px">  <input type="button" value="Browse" id="get_file" style="width: 174px; ">
							</p>
							<input type="file" id="my_file"  onchange="document.getElementById('file_name').value = this.value" style="display: none;">
							</div>
							

						
						<div class="container" id="detect">	
								<h2 style="background-color: black; color: white;" align="left">Detection of (Anti) Patterns</h2>
				<div class="col-lg-4 col-md-4" style="width: 627px; ">
                        <ul class="nav nav-tabs">
                            <li class="active"><a href="#home" data-toggle="tab">Check compliance for REST principles</a>
                            </li>
                            <li class=""><a href="#profile" data-toggle="tab">Check compliance for OCCI principles</a>
                            </li>
  </ul>
                        <div class="tab-content">
                            <div class="tab-pane fade active in" id="home">
                             
                                <p><form>
								<p align="left"> <input type="submit" value="Identify Patterns" style="height: 43px; width: 184px"> 
								<input type="submit" value="Identify Anti-Patterns" style="height: 43px; width: 184px"> </p>
							
							<br> 
									<table id="customers1">
 <tr>
    <td>Pattern</td>
    <td>Rest Element</td>
    <td>Type</td>
    <td>Content</td>   
    </tr>
<c:forEach items="${listData}" var="DemoNames">
    <tr>
    <td>${DemoNames.name}</td>
    <td>${DemoNames.element}</td>
    <td>${DemoNames.type}</td>
    <td>${DemoNames.content}</td>
       
    </tr>
</c:forEach>
</table>
							
							</form>
                                    
                                </p>
                            </div>
                            <div class="tab-pane fade" id="profile">
                                <h4>Profile Tab</h4>
                                <p>
                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit eserunt mollit anim id est laborum.
                                        Lorem ipsum dolor sit amet, consectetur adipisicing elit eserunt mollit anim id est laborum.
                                        Lorem ipsum dolor sit amet, consectetur adipisicing elit eserunt mollit anim id est laborum.
                                </p>

                            </div>
                            

                        </div>
                    </div>

                </div>
				
				
				
				
				
</div>
					</section>




				
				<!-- About Me -->
					<section id="about" class="three">
						<div class="container"></div>
					</section>

				

						

			</div>

		<!-- Footer -->
			<div id="footer">
</div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/jquery.scrollzer.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="assets/js/main.js"></script>
			
			  <!-- /. WRAPPER  -->
    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
    <!-- JQUERY SCRIPTS -->
    <script src="assets/js/jquery-1.10.2.js"></script>
      <!-- BOOTSTRAP SCRIPTS -->
    <script src="assets/js/bootstrap.min.js"></script>
      <!-- CUSTOM SCRIPTS -->
    <script src="assets/js/custom.js"></script>

	</body>
</html>