<?php
session_start();

             if(isset($_SESSION['username'])){
              $username=($_SESSION['username']);
              //$userId=($_SESSION['id']);
            }
            else{
              header("Location:login.php");
            }

 $pagetitle="Home Page";
 include "includes/header.php";
   
      ?>
        <div class="templatemo-welcome" id="templatemo-welcome">
            <div class="container">
                <div class="templatemo-slogan text-center">
                    <span class="txt_darkgrey">ATTENDANCE MANAGEMENT SYSTEM HOME PAGE</span>
                    <img src="image/logo.png" style="position:fixed; right:100px; bottom:100px; width:300px; height:300px; border:none;"
                    alt="BIT LOGO" />


                    <p class="txt_slogan">
                </div>	
            </div>
        </div>   
        

    <div id="templatemo-blog">
            <div class="container">
                <div class="row">
                 <?php include "includes/sidebar.php";?>
                <div class="blog_box">
                    <div class="col-sm-5 col-md-6 blog_post">
                        <ul class="list-inline">
                        <li>    
                        <div class="clearfix"> </div>
                        <p class="blog_text">
                           <p> Attendance Management System </p>
                            <p>Add Student</p>
                            <p>Add Teachers</p>
                            <p>Add Subjects</p>
                            <p>Start Adding Attendance</p>
                            <p>Attendance Register</p>
                            <p>Less than 70% Not promoted for the exams!!</p>
                            Created for 
                            Ise Dept,
                            BANGALORE INSTITUTE OF TECHNOLOGY
                            </p>
                            </li>
                        </ul>
                    </div> <!-- /.blog_post 1 --> 
                </div>
              </div>
           </div>
    </div>
<?php include "includes/footer.php"; ?>