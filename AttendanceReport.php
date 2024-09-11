<?php
  $pagetitle="student Report";
  include "includes/header.php"; ?>
  <div class="container">
  <div class="row">
                    <div class="templatemo-line-header" style="margin-top: 0px;" >
                        <div class="text-center">
                            <hr class="team_hr team_hr_left hr_gray"/><span class="span_blog txt_darkgrey txt_orange">Attendance Report</span>
                            <hr class="team_hr team_hr_right hr_gray" />
                        </div>
                    </div>
                </div>
<?php
error_reporting(E_ALL ^ E_DEPRECATED);
$connect=mysqli_connect("localhost","root","","attendance_db");
if(!$connect)
{
	echo "Error".mysqli_error();
	}
	
	
	$db=mysqli_select_db($connect,"attendance_db");
	if(!$db)
	{
		echo "Error".mysqli_error();
		}
		 
?>
	<div class="table-responsive">
                 <table class="ui celled table table table-hover">
                  <thead>
                    <tr>
                  
                      <th>Student Roll Number</th>
                      <th>Student Name</th>
                      <th>Subject</th>
                      <th>Program</th>
                      <th>Semester</th>
                      <th>Date</th>
                      <th>Percentage</th>
		<th>Status</th>
                      
                    </tr>
                  </thead>
     <tbody>
          <?php        
            $query=mysqli_query($connect,"Select (Select count(*) from tbl_attendance Where attendance='P')/ count(studentRollNumber) *100 as Percentage from tbl_attendance ");
			$query3=mysqli_query($connect,"Select * from tbl_attendance T inner join student_table st on st.`std_roll_no`=T.studentRollNumber inner join subject_table S on S.subject_no=T.subjectId order by st.`std_roll_no`");
      /*if (!$query3) {
        printf("Error: %s\n", mysqli_error($connect));
        exit();
    }*/
while($row=mysqli_fetch_array($query3))
{
  echo"<tr>";
           echo '<td>'. $row[1] . '</td>';
            echo '<td>'. $row[6] . '</td>';
			echo '<td>'. $row[16] . '</td>';
			echo '<td>'. $row[13] . '</td>';
			echo '<td>'. $row[14] . '</td>';
			echo '<td>'. $row[4] . '</td>';
           $query=mysqli_query($connect,"select (select count(*) from tbl_attendance where attendance='P' and studentRollNumber='$row[1]' and subjectId='$row[2]')/(Select count(attendance) from tbl_attendance where studentRollNumber='$row[1]' and subjectId='$row[2]')*100 as per from tbl_attendance where studentRollNumber='$row[1]' and subjectId='$row[2]' group by per asc ");
		   
		while ($row2=mysqli_fetch_array($query))
		   {
			   echo '<td>'. $row2[0] . '%</td>';
if($row2[0]<75)
{
echo "<td><span style='color:red;'>dropped</span></td>";

}
else
echo "<td><span style='color:green;'>Promoted</span></td>";


			   }
			   echo"</tr>";
}
           ?>
      </tbody>     
            </table>
             </div><!--table-responsive-->
            </div><!--container-->
<?php include "includes/footer.php"; ?>
