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
	<title>Welcome Administrator</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" media="all" />
     <link rel="stylesheet" type="text/css" href="css/simple-sidebar.css" media="all" />
    <link rel="scripts" type="js" href="js/bootstrap.min.js" />
	<link rel="scripts" type="js" href="js/jQuery-3.2.1.min.js" />
	<script type="text/javascript">
	
	$(function(){
	    $('[data-toggle="tooltip"]').tooltip();
	    $(".side-nav .collapse").on("hide.bs.collapse", function() {                   
	        $(this).prev().find(".fa").eq(1).removeClass("fa-angle-right").addClass("fa-angle-down");
	    });
	    $('.side-nav .collapse').on("show.bs.collapse", function() {                        
	        $(this).prev().find(".fa").eq(1).removeClass("fa-angle-down").addClass("fa-angle-right");        
	    });
	})    
	    
	
	</script>
</head>
<body>

<div id="throbber" style="display:none; min-height:120px;"></div>
<div id="noty-holder"></div>
<div id="wrapper">
    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="">
                <img src="http://placehold.it/200x50&text=LOGO" alt="LOGO"">
            </a>
        </div>
        <!-- Top Menu Items -->
        <ul class="nav navbar-right top-nav">
            <li><a href="#" data-placement="bottom" data-toggle="tooltip" href="#" data-original-title="Stats"><i class="fa fa-bar-chart-o"></i>
                </a>
            </li>            
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Admin User <b class="fa fa-angle-down"></b></a>
                <ul class="dropdown-menu">
                    <li><a href="#"><i class="fa fa-fw fa-user"></i> Edit Profile</a></li>
                    <li><a href="#"><i class="fa fa-fw fa-cog"></i> Change Password</a></li>
                    <li class="divider"></li>
                    <li><a href="#"><i class="fa fa-fw fa-power-off"></i> Logout</a></li>
                </ul>
            </li>
        </ul>
        <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
        <div class="collapse navbar-collapse navbar-ex1-collapse">
            <ul class="nav navbar-nav side-nav">
                <li>
                    <a href="investigaciones/favoritas"><i class="fa fa-fw fa-search"></i>  Dashboard</a>
                </li>
                <li>
                    <a href="investigaciones/favoritas"><i class="fa fa-fw fa-star"></i>  View Roaster</a>
                </li>
                <li>
                    <a href="investigaciones/favoritas"><i class="fa fa-fw fa-user-plus"></i>  Add/Modify Employee</a>
                </li>
                <li>
                    <a href="sugerencias"><i class="fa fa-fw fa-paper-plane-o"></i> Acknowledge Leave</a>
                </li>
                <li>
                    <a href="faq"><i class="fa fa-fw fa fa-question-circle"></i> Help & Support</a>
                </li>
            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </nav>

    <div id="page-wrapper">
        <div class="container-fluid">
            <!-- Page Heading -->
            <div class="row" id="main" >
                <div class="col-sm-12 col-md-12 well" id="content">
                    <h3>Welcome Admin!</h3>
                </div>
            </div>
            <!-- /.row -->
            <hr>
            <div class="row" id="" >
                <div class="col-sm-12 col-md-12 well" id="content">
                    <h3>Available Employees</h3>
                    <div>
                    
                    </div>
                </div>
            </div>
            <!-- /.row -->
            <hr>
            <div class="row" id="" >
                <div class="col-sm-12 col-md-12 well" id="content">
                    <h3>Leave Applications</h3>
                </div>
            </div>
            <!-- /.row -->
        </div>
        <!-- /.container-fluid -->
    </div>
    <!-- /#page-wrapper -->
</div><!-- /#wrapper -->

</body>
</html>