<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta name="description" content="Duty roaster management application for ICMS department">
	<meta name ="author" content="Gaurav Gunjan">
	<meta name="keywords" content="ICMS, CRIS, Duty Roaster">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="refresh" content="60"> 
	<title>Welcome to ICMS Roaster Management</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" media="all" />
     <link rel="stylesheet" type="text/css" href="css/the-big-picture.css" media="all" />
    <link rel="scripts" type="js" href="js/bootstrap.min.js" />
	<link rel="scripts" type="js" href="js/jQuery-3.2.1.min.js" />
	
</head>
<body>
	
	<!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-bottom" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle Nav</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">Project by CRIS</a>
            </div>

            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="#">About</a>
                    </li>
                    <li>
                        <a href="#">Contact</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    <!-- Page Content -->
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-sm-12">
                <h1>Welcome to ICMS Roaster Management</h1>
                <p>ICMS Roaster Management is a web based Java application built as an initiative in the Integrated Coach Management System(ICMS) wing of Center for Railway Information Systems(CRIS) to simplify the duty and shift management of the employees.</p>
            </div>
        </div>
        <!-- /.row -->
        <div class="row">
            <div class="col-md-6 col-sm-12">
            	<h2>Sign in</h2>
				 <form class="form-inline" action="/ICMSRoaster/Login" method ="post">
					  <div class="form-group">
					    <label for="email">User Id/Employee Id:</label>
					    <input type="email" class="form-control" id="email" placeholder="Enter Username" name="username">
					  </div>
					  <div class="form-group">
					    <label for="pwd">Password:</label>
					    <input type="password" class="form-control" id="pwd" type="password"  placeholder="Password" name="password">
					  </div>
					  <div class="checkbox">
					    <label><input type="checkbox"> Remember me</label>
					  </div>
					  <button type="submit" class="btn btn-success" value="Login">Submit</button>
				</form>
            </div>
        </div>
        <!-- /.row -->
    </div>
    <!-- /.container -->
</body>
</html>