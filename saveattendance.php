<?php
error_reporting(E_ALL ^ E_DEPRECATED);
include("config.php");
$stid=$_POST['stid'];
$subj=$_POST['subjid'];
$atten=$_POST['present'];
$date = date('Y-m-d H:i:s');
$query=mysqli_query($connect,"Insert into tbl_attendance(studentRollNumber,subjectId,attendance,Date)VALUES('$stid','$subj','$atten','$date')");
if(!$query)
{
	echo mysqli_error();
	}





header("Location:AttendanceForm.php");
?>