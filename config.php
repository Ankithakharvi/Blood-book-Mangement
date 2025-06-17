<?php 

$con=new mysqli("localhost","root","root","blood_bank");
if($con->connect_error)
{
	echo "Database Connection Failed";
}

?>