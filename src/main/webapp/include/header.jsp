<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link rel="shortcut icon" href="assets/ico/favicon.ico">

<%
if (request.getAttribute("title") == null) {
	out.print("<title>Homepage</title>");
} else {
	out.print("<title>" + request.getAttribute("title") + "</title>");
}
%>

<!-- Bootstrap core CSS -->
<link href="assets/css/bootstrap.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="assets/css/style.css" rel="stylesheet">
<link href="assets/css/font-awesome.min.css" rel="stylesheet">




<script src="assets/js/modernizr.js"></script>
</head>

<body>

	<!-- Fixed navbar -->
	<div class="navbar navbar-default navbar-fixed-top" role="navigation">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="index.html">SOLID.</a>
			</div>
			<div class="navbar-collapse collapse navbar-right">
				<ul class="nav navbar-nav">
					<li><a href="<%=request.getContextPath()%>/home?page=home">HOME</a></li>
					<li><a
						href="<%=request.getContextPath()%>/home?page=listusers">LIST
							USERS</a></li>
				</ul>
			</div>
			<!--/.nav-collapse -->
		</div>
	</div>



	<!-- *****************************************************************************************************************
	 CONTACT WRAP
	 ***************************************************************************************************************** -->

	<div id="contactwrap"></div>



	<div class="container mtb">
		<div class="row">
			<div class="col-lg-8">