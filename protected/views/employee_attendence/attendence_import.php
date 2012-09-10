<?php

include 'simplexlsx.class.php';
$date = date('c');
$xlsx = new SimpleXLSX('csv_docs/sheet'.$date.'.xlsx');
$data1 =$xlsx->rows();
$i=1;

foreach($data1 as $data)
{
	if($i==1)
	{

		function unixstamp( $excelDateTime ) {
		    $d = floor( $excelDateTime ); // seconds since 1900
		    $t = $excelDateTime - $d;
		    return ($d > 0) ? ( $d - 25569 ) * 86400 + $t * 86400 : $t * 86400;
		}
		$unixDateVal = unixstamp($data[4]);
		//var_dump($unixDateVal);
		$date=date('Y-m-d',$unixDateVal);
		$filename = "Book".$date.".xlsx";
		$i++;	
	}
	else if($i==2)
	{
		$i++;
	}	
	else 
	{
	$var = $data[0];  /*Dept*/
	$var1 = $data[1];  /*Emp ID*/
	$var2 = $data[2];   /* Name*/
	$var3 = $data[3];   /* Hol*/
	$var4 = $data[4];   /* WO*/
	$var6 = $data[6];   /* In*/
	 //output="13:37:00"
	$var7 = $data[7];   /* Out1*/
	$var8 = $data[8];   /* In2*/	
	$var9 = $data[9];   /* Out2*/
	$var10 = $data[10];   /* In3*/
	$var11 = $data[11];   /* Out3*/
	$var12= $data[12];   /* In4*/	
	$var13 = $data[13];   /* Out4*/
	$var22 = $data[22];/*Total work*/
	$var23 = $data[23]; /* Overtime*/

	$in1=date('H:i', round($var6*86400)-19800);
	
	$out1=date('H:i', round($var7*86400)-19800);
	
	$in2=date('H:i', round($var8*86400)-19800);
	$out2=date('H:i', round($var9*86400)-19800);
	
	$in3=date('H:i', round($var10*86400)-19800);
	
	$out3=date('H:i', round($var11*86400)-19800);
	$in4=date('H:i', round($var12*86400)-19800);
	
	$out4=date('H:i', round($var13*86400)-19800);
	
	$total=date('H:i', round($var22*86400)-19800);
	$in5=date('H:i', round($var12*86400)-19800);
	$out5=date('H:i', round($var13*86400)-19800);
	
	$total=date('H:i', round($var22*86400)-19800);
	
	$extra=date('H:i:s', round($var23*86400)-19800);
	$employee_attendence_organization_id=1;
	$con = mysql_connect("localhost","root","ubuntu");
	if (!$con)
 	{
 	 die('Could not connect: ' . mysql_error());
  	}
	mysql_select_db("ems_20120818", $con);
	mysql_query("INSERT INTO employee_attendence (employee_id,date,time1,time2,time3,time4,time5,time6,time7,
 time8, time9,time10,total_hour,overtime_hour,csvfile,employee_attendence_organization_id) VALUES 
('$var1','$date','$in1','$out1','$in2','$out2','$in3','$out3','$in4','$out4','$in5','$out5',
'$total','$extra','$filename','$employee_attendence_organization_id')");

	}
	//echo "bye";
}
mysql_close($con);
$this->redirect(array('admin'));
?> 

