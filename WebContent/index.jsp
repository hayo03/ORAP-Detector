<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="b" uri="http://java.sun.com/jsp/jstl/core" %>
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
		
		<style>
		#customers {
    font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

#customers td, #customers th {
    border: 1px solid #ddd;
    padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
    padding-top: 12px;
    padding-bottom: 12px;
    text-align: left;
    background-color: #4CAF50;
    color: white;
    }
    #myDIV1 {
    width: 100%;
    padding: 50px 0;
    text-align: center;
    background-color: lightblue;
    margin-top: 20px;
}

#myDIV2 {
    width: 100%;
    padding: 50px 0;
    text-align: center;
    background-color: lightblue;
    margin-top: 20px;
}

}</style>
		
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
							<span class="image avatar48"><img src="images/tool.jpg" alt="" /></span>
							<h1 id="title">ORAP-DT</h1>
							<p>Detect OCCI/REST (anti) pattern</p>
						</div>

					
						<nav id="nav">
							
							<ul>
								<li><a href="Welcome.jsp" id="top-link" class="skel-layers-ignoreHref"><span class="icon fa-home">Welecome</span></a></li>
								<li><a href="#portfolio" id="portfolio-link" class="skel-layers-ignoreHref"><span class="icon fa-th">Load/Realod FILE</span></a></li>
								<li><a href="#Detection" id="about-link" class="skel-layers-ignoreHref"><span class="icon fa-th">Detect (Anti) Patterns</span></a></li>
								<li><a href="Contact.jsp" id="contact-link" class="skel-layers-ignoreHref"><span class="icon fa-envelope">Contact</span></a></li>
								
							</ul>
						</nav>

				</div>
				
				

				<div class="bottom">

					<!-- Social Icons -->
						<ul class="icons">
							
							<li><a href="#" class="icon fa-github"><span class="label">Github</span></a></li>
							<li><a href="#" class="icon fa-envelope"><span class="label">Email</span></a></li>
						</ul>

				</div>

			</div>

		<!-- Main -->
			<div id="main" style="height: auto">

				
<!-- Portfolio -->
					<section id="portfolio" class="two" style="height: auto">
						<div class="container">	
						<div id="ok" style="background-color: black;"> <h2 align="left" style="color: white;">Load Cloud REST API File</h2></div>
								<div id=div1" style="border-color: black;border:solid; height: 100px">
								<p align="left"> Choose the Ontology File: </p>
								<input type="text" name="filee" id="file_name" value='<%= session.getAttribute("name") %>' style="width: 699px; height: 47px"><p align="left"> 
								  
								<input type="button" value="Browse" name="test" id="get_file" style="width: 174px; ">
							</p>
							<input type="file" id="my_file"  name="myfile" onchange="document.getElementById('file_name').value = this.value" style="display: none;">
							</div>
							

						
						<div id="Detection" class="container" style="height: 875px;overflow-x: auto;">	
								<h2 style="background-color: black; color: white;" align="left">Detection of (Anti) Patterns</h2>
				<div class="col-lg-4 col-md-4" style="width: 627px; ">
                        <ul class="nav nav-tabs">
                            <li class="active"><a href="#home" data-toggle="tab">Check compliance for REST principles</a>
                            </li>
                            <li class=""><a href="#profile" data-toggle="tab">Check compliance for OCCI principles</a>
                            </li>
  </ul>
                        <div class="tab-content" >
                            <div class="tab-pane fade active in" id="home" style="height: 400px;width:1000px; overflow:scroll;">
                    
                                <p><form action="Controler" method="GET">
								
								<input type="submit" name="method" value="Indentify Patterns" onclick="hideRESTAntiPatterns()"> 
									<input type="submit" name="method" value="Indentify Anti-Patterns" onclick="hideRESTPatterns()">
									
									<br> <br> 
									 
  <div id="myDIV2">
<table id="customers" >
 <tr>
<c:forEach items="${patternlistData}" var="DemoNames">
    <tr>
    <td>${DemoNames.name}</td>
    <td>${DemoNames.element}</td>
    <td>${DemoNames.type}</td>
    <td>${DemoNames.content}</td>
       
    </tr>
</c:forEach>
</table>
</div>
<div id="myDIV1">
									<table id="customers" >
 <tr>
<c:forEach items="${antipatternlistData}" var="DemoNames">
    <tr>
    <td>${DemoNames.name}</td>
    <td>${DemoNames.element}</td>
    <td>${DemoNames.type}</td>
    <td>${DemoNames.content}</td>
    <td>${DemoNames.recommendation}</td>
       
    </tr>
</c:forEach>
</table>
 </div>

								</form>
                                     </div>
                                     
                                     
                            <div class="tab-pane fade" id="profile" style="height: 400px;width:1000px; overflow:scroll;">
                                 <p><form action="OCCIControler" method="GET">
									
									<input type="submit" name="OCCImethod" value="Indentify Patterns">
									<input type="submit" name="OCCImethod" value="Indentify Anti-Patterns">
									<br> <br> 
									<table id="customers">
 <tr>
<b:forEach items="${patternlistData2}" var="DemoName">
    <tr>
    <td>${DemoName.name}</td>
    <td>${DemoName.element}</td>
    <td>${DemoName.type}</td>
    <td>${DemoName.content}</td>
       
    </tr>
</b:forEach>
</table>
<table id="customers">
 <tr>
<b:forEach items="${antipatternlistData2}" var="DemoName">
    <tr>
    <td>${DemoName.name}</td>
    <td>${DemoName.element}</td>
    <td>${DemoName.type}</td>
    <td>${DemoName.content}</td>
     <td>${DemoName.recommendation}</td>
       
    </tr>
</b:forEach>
</table>
								</form>
                                    
                              

                            </div>
                            

                        </div>
                    </div>

                </div>
				
				
				
				
				
</div>
					</section>


<div>
<p><form action="UploadServlet" method="post" action="UploadServlet"
        enctype="multipart/form-data">>
<input type="text" name="description" value='<%= session.getAttribute("description") %>'/>
Select file to upload: <input type="file" name="file" value='<%= session.getAttribute("filename") %>'/>
<input type="submit" value="Upload" />
</form>

</div>

				
				<!-- About Me -->
					<section id="about" class="three">
						<div class="container"></div>
					</section>

				

						

			</div>

		<!-- Footer -->
			<div id="footer">
</div>
<script>
function hideRESTAntiPatterns() {
    var x = document.getElementById("myDIV1");
    if (x.style.display === "block") {
        x.style.display = "none";
    } 
    else {
        x.style.display = "none";
    }
}

function hideRESTPatterns() {
    var x = document.getElementById("myDIV2");
    if (x.style.display === "block") {
        x.style.display = "none";
    } 
    else {
        x.style.display = "none";
    }
}


</script>
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