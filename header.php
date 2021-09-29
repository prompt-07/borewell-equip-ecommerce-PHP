<?php
session_start();

?>

<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
	
		<meta name="viewport" content="width=device-width, initial-scale=1">
		 
		<title>Flipmart-Your All In One Store</title>

		<!-- Google font -->
		<link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">

		<!-- Bootstrap -->
		<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>

		<!-- Slick -->
		<link type="text/css" rel="stylesheet" href="css/slick.css"/>
		<link type="text/css" rel="stylesheet" href="css/slick-theme.css"/>

		<!-- nouislider -->
		<link type="text/css" rel="stylesheet" href="css/nouislider.min.css"/>

		<!-- Font Awesome Icon -->
		<link rel="stylesheet" href="css/font-awesome.min.css">

		<!-- Custom stlylesheet -->
		<link type="text/css" rel="stylesheet" href="css/style.css"/>
		<link type="text/css" rel="stylesheet" href="css/accountbtn.css"/>
		
		
		
    <style>
        #navigation {
            background: linear-gradient(to right, #babdd6, #babdd6); 
          
        }
        #header {
  
            background: #000218;  
            
  
        }
        #top-header {
              
  			background: #000218; 


        }
        #footer {
            background: #000218;  
            color: #babdd6;
        }
        #bottom-footer {
            background: #7474BF;  
            background: -webkit-linear-gradient(to right, #348AC7, #7474BF); 
            background: linear-gradient(to right, #348AC7, #7474BF); /

        }
        .footer-links li a {
          color: #babdd6;
        }
        .mainn-raised {
            
            margin: -7px 0px 0px;
            border-radius: 6px;
            box-shadow: 0 16px 24px 2px rgba(0, 0, 0, 0.14), 0 6px 30px 5px rgba(0, 0, 0, 0.12), 0 8px 10px -5px rgba(0, 0, 0, 0.2);

        }
       
        .glyphicon{
    display: inline-block;
    font: normal normal normal 14px/1 FontAwesome;
    font-size: inherit;
    text-rendering: auto;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    }
    .glyphicon-chevron-left:before{
        content:"\f053"
    }
    .glyphicon-chevron-right:before{
        content:"\f054"
    }
        

       
        
        </style>

    </head>
	<body>
		
		<header>
			<!-- TOP HEADER -->
			<div id="top-header">
				<div class="container">
					
					<ul class="header-links pull-right">
						<li><?php
                             include "db.php";
                            if(isset($_SESSION["uid"])){
                                $sql = "SELECT first_name FROM user_info WHERE user_id='$_SESSION[uid]'";
                                $query = mysqli_query($con,$sql);
                                $row=mysqli_fetch_array($query);
                                
                                echo '
                               <div class="dropdownn">
                                  <a href="#" class="dropdownn" data-toggle="modal" data-target="#myModal" ><i class="fa fa-user-o"></i> HI '.$row["first_name"].'</a>
                                  <div class="dropdownn-content">
                                    <a href="logout.php"  ><i class="fa fa-sign-in" aria-hidden="true"></i>Log out</a>
                                    
                                  </div>
                                </div>';

                            }else{ 
                                echo '
                                <div class="dropdownn">
                                  <a href="#" class="dropdownn" data-toggle="modal" data-target="#myModal" ><i class="fa fa-user-o"></i> My Account</a>
                                  <div class="dropdownn-content">
                                    <a href="" data-toggle="modal" data-target="#Modal_login"><i class="fa fa-sign-in" aria-hidden="true" ></i>Login</a>
                                    <a href="../borewell-shopping-system/admin/index.php" data-toggle="modal"><i class="fa fa-sign-in" aria-hidden="true"></i>Admin Login</a>
                                    <a href="" data-toggle="modal" data-target="#Modal_register"><i class="fa fa-user-plus" aria-hidden="true"></i>Register</a>
                                    
                          
                                  </div>
                                </div>';
                                
                            }
                                             ?>
                               
                                </li>				
					</ul>
					
				</div>
			</div>
			<div id="header">
				<div class="container">
					<div class="row">
						<div class="col-sm-1">
							<img src="/borewell-shopping-system/img/logo3.jpg" alt="" style="width: 50px; height: 50px;">
						</div>
						<div class="col-sm-6 align-content-start" style="margin-left:0;padding-left:0;">
							<div class="header-logo">
								<a href="#" class="logo">
								<font style="font-style:normal; font-size: 40px;color: aliceblue;font-family: serif">
                                    AquaJet
                                    </font>
									
								</a>
							</div>
						</div>
						<div class="col-md-4 clearfix">
							<div class="header-ctn">
								<div class="dropdown">
									
										<a href="cart.php" style="width:100%;"><i class="fa fa-shopping-cart"></i></a>
										<!-- <span style="color:#fff;">Your Cart</span> -->
										
								
										
									</div>
								<div class="menu-toggle">
									<a href="#">
										<i class="fa fa-bars"></i>
										<span>Menu</span>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</header>
		<nav id='navigation'>
            <div class="container" id="get_category_home">
                
            </div>
		</nav>
            
		<div class="modal fade" id="Modal_login" role="dialog">
                        <div class="modal-dialog">
													
                          <div class="modal-content">
                            <div class="modal-header">
                              <button type="button" class="close" data-dismiss="modal">&times;</button>
                              
                            </div>
                            <div class="modal-body">
                            <?php
                                include "login_form.php";
    
                            ?>
          
                            </div>
                            
                          </div>
													
                        </div>
                      </div>
                <div class="modal fade" id="Modal_register" role="dialog">
                        <div class="modal-dialog" style="">

                          <div class="modal-content">
                            <div class="modal-header">
                              <button type="button" class="close" data-dismiss="modal">&times;</button>
                              
                            </div>
                            <div class="modal-body">
                            <?php
                                include "register_form.php";
    
                            ?>
          
                            </div>
                            
                          </div>

                        </div>
                      </div>
		