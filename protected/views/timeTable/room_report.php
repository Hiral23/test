<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">


<html>
<head>

	
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/screen.css" media="print" />
</head>
<body>
<button onclick="javascript:window.print()" id="printid">Print</button><?php echo "<br>";	
	 ?>

<?php
$this->menu=array(
	
);
$day = array(" ","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday");
 
$timetable_id=$_REQUEST['timetable_id'];
$room=$_REQUEST['room_id'];

$res=TimeTable::model()->findByAttributes(array('timetable_id'=>$timetable_id));
//echo $res['zero_lec'];
$starti=0;

if($res['zero_lec']==0)
{
	$starti=1;

}

$nooflec = $res['No_of_Lec'];

//$timetableid = $model->timetable_id;
$sum = $nooflec;
//echo $sum;
//$branch = Branch::model()->findByPk($model->timetable_branch_id)->branch_name;

//echo CHtml::button('Go Back', array('class'=>'submit','submit' => array('timeTable/RoomMasterReport','id'=>$timetable_id)));

echo CHtml::link('GO BACK',Yii::app()->createUrl('timeTable/RoomMasterReport/'.$timetable_id),array('id'=>"printid")); 

$lec_duration=LecDuration::model()->findAllByAttributes(array(),
								$condition  = 'timetable_id = :table_id ', 
								$params     = array(
									':table_id' => $timetable_id,
									));
$lec=array();
foreach($lec_duration as $l)
$lec[]=$l['duration'];

//print_r($lec);
//exit;
//$time=$model->clg_start_time;
$time = date('H:i:s A',strtotime($res['clg_start_time']));
$timestamp = strtotime($time);
$time = date('g:i:s A', $timestamp);
$createdate = date_create($model->creation_date);
echo $model->creation_date;



?>

<h5> Room Name : <?php echo RoomDetailsMaster::model()->findByPk($room)->room_name; ?></h5>
<table id="time-table-struc"  border="1" style="font-size:12px;border-collapse:collapse">
	<th>Day/Time</th>

<?php
$i=0;
	while($i < 7)
	{
		echo "<th>".$day[$i]."</th>";    		
		$i++;
	}
?>	
	
<?php 
$tempi=0;
$f=0;
$break="";
$count=0;
$a=array();
$a[0]=0;
$ind=0;
$dur1=0;
$l=0;
for($i=$starti;$i<=$sum;$i++)
{
$days=count($day);
echo "<tr>";
		$duration = NoOfBreakTable::model()->findByAttributes(
								 array(
									'timetable_id' => $timetable_id,
									'after_lec_break' => $i,
									));
		

		if($duration)
		{
			$dur = $duration['duration'];
			$dur1=date('i',strtotime($dur));
		}		
		
		if($break)
		{
			//echo "<td style=width:100px;>".$time."-</br>".date('g:i:s A', strtotime($time)+$dur1*60)."</td><td colspan=7 align=center>Break</td></tr>";
			$break="";
			$timestamp = strtotime($time) +$dur1*60;
			$time = date('g:i:s A', $timestamp);
			$i--;
			continue;
			
		}
		else
		{
echo "<td style=width:100px;>".$time."-</br>".date('g:i:s A', strtotime($time) + 60*$lec[$l])."</td><td style=width:10px;>".$i."</td>";
			$timestamp = strtotime($time) + 60*$lec[$l];
			$l++;
			$time = date('g:i:s A', $timestamp);
			//echo $i;
			
		}

	


	if($tempi+2==$i)
		{
			$ind=0;
		}

	
	$in=0;		
	for($j=1;$j<=$days-1;++$j)
	  {
		$subname="";
		$room="";
		$faculty="";
		$batch="";
		
		if($a[$in]==$j && $tempi+1==$i)
		{
			$a[$in]=0;
			$a[$ind]=0;
			if($ind>=$in)
			$in++;		
			continue;
		
		}
		
		
		
		$result=TimeTableDetail::model()->findAllByAttributes(
								array(),
								$condition  = 'day = :day AND lec = :lec AND room_id = :room_id AND timetable_id = :table_id',
								$params     = array(
									':table_id' => $timetable_id,
									':day' => $j,
						 			':lec' => $i,
									':room_id'=>$_REQUEST['room_id'],
									));
		$break=NoOfBreakTable::model()->findAllByAttributes(
								array(),
								$condition  = 'after_lec_break = :lec AND timetable_id = :table_id',
								$params     = array(
									':table_id' => $timetable_id,
						 			':lec' => $i,
									
									));
		
		if($result)
		{	
			foreach($result as $check)
			{
				$check_type=SubjectMaster::model()->findByAttributes(array('subject_master_id'=>$check->subject_id));
			}	
			if($check_type['subject_master_type_id']==2)
			{	
				echo "<td rowspan=2 align=center style=background:#C0CCCC; border-color:black; color:".$check_type['subject_master_color_code'].";width:150px;>";				
				$tempi=$i;         
				$a[$ind]=$j;
				$ind++;
				//print_r($a);
				
			}
			else
				echo "<td align=center style=color:".$check_type['subject_master_color_code'].";width:150px;>";				
					
			foreach($result as $check)
			{
				if($check_type['subject_master_type_id']==2)
				$batch="(".Batch::model()->findByPk($check->batch_id)->batch_name.")";				
				$subname = SubjectMaster::model()->findByPk($check->subject_id)->subject_master_alias;
				//$room="(".RoomDetailsMaster::model()->findByPk($check->room_id)->room_name.")";	
				$div="(".Division::model()->findByPk($check->division_id)->division_code.")";
				$faculty="(".EmployeeInfo::model()->findByPk($check->faculty_emp_id)->employee_name_alias.")";
				if($batch)
				echo "</br>".$subname."</br>".$batch."</br>".$faculty."</br>".$div;
				else
				echo "</br>".$subname."</br>"."(".$div.")"."</br>".$faculty;
			}
			echo "</td>";
		}
		else
		{
			echo "<td style=width:150px;>".$subname."</br>".$batch."</br>".$faculty."</td>";		
			
		}
		
	  }
echo "</tr>";
}

echo "</table>";


?>
