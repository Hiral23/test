<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">


<html>
<head>
<style>
#fancybox-content {
  padding-left:35px;
  padding-top:35px;
 }

</style>
	
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/screen.css" media="print" />
</head>
<body>
<button onclick="javascript:window.print()" id="printid">Print</button><?php echo "<br>";	
	 ?>


<?php
$this->menu=array(
	
	//array('label'=>'', 'url'=>array('create'),'linkOptions'=>array('class'=>'Create','title'=>'Create timetable')),
	//array('label'=>'', 'url'=>array('admin'),'linkOptions'=>array('class'=>'Manage','title'=>'Manage')),
);
$day = array("Monday","Tuesday","Wednesday","Thursday","Friday","Saturday");


$division_id=$division;
$timetableid=$timetable_id;
echo CHtml::link('GO BACK',Yii::app()->createUrl('timeTable/BranchwiseReport/'.$timetableid),array('id'=>"printid")); 
$model=TimeTable::model()->findByPk($timetableid);
 
$nooflec = $model->No_of_Lec;
//$timetableid = $model->timetable_id;
$sum = $nooflec;


$lec_duration=LecDuration::model()->findAllByAttributes(array(),
								$condition  = 'timetable_id = :table_id ', 
								$params     = array(
									':table_id' => $timetableid,
									));
$lec=array();
foreach($lec_duration as $l)
$lec[]=$l['duration'];


//echo CHtml::button('Goto Admin', array('class'=>'submit','submit' => array('timeTable/admin')));
$createdate = date_create($model->creation_date);

$starti = 1;
if($model->zero_lec==1)
{
	$starti = 0;
}
$time=$model->clg_start_time;
$time = date('H:i A',strtotime($time));
$timestamp = strtotime($time);
$time = date('g:i A', $timestamp);

?>
<h4><u><?php echo "Branch: ".Branch::model()->findByPk($branch)->branch_name; ?></br> <?php echo "Division: ".Division::model()->findByPk($division_id)->division_code;?></u></h4>
<h4> w.e.f:<?php echo date_format($createdate,'d-m-Y'); ?></h4>
<table id="time-table-struc"  border="2" style="width:auto;font-size:12px;border-collapse:collapse; width:900px; height:500px;"  >
	<th  align=center>Day/Time</th>

<?php
$i=0;
	while($i < 6)
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
$l=0;
$ind=0;
for($i=$starti;$i<=$nooflec;$i++)
{
$days=count($day);
echo "<tr>";$duration = NoOfBreakTable::model()->findByAttributes(
								 array(
									'timetable_id' => $timetableid,
									'after_lec_break' => $i,
									));
		$dur = $duration['duration'];

		if($dur)
		$dur1=date('i',strtotime($dur));
		
		if($break)
		{
			echo "<td style=width:100px;>".$time."-</br>".date('g:i A', strtotime($time)+$dur1*60)."</td><td colspan=7 align=center>Break</td></tr>";
			$break="";
			$timestamp = strtotime($time) +$dur1*60;
			$time = date('g:i A', $timestamp);
			$i--;
			continue;
			
		}
		else
		{
		
		echo "<td style=width:100px;>".$time."-</br>".date('g:i A', strtotime($time) + 60*$lec[$l])."</td>";
			$timestamp = strtotime($time) + 60*$lec[$l];
			$l++;
			$time = date('g:i A', $timestamp);
		}
		if($tempi+2==$i)
		{
			$ind=0;
		}

	
	$in=0;
	for($j=1;$j<=$days;++$j)
	  {
		$subname="";
		$room="";
		$faculty="";
		$batch="";
		
		if($a[$in]==$j && $tempi+1==$i)
		{
			$a[$in]=0;
			$a[$ind]=0;
			//unset($a[$in]);
			if($ind>=$in)
			$in++;		
			continue;
		
		}
		
		
		
		$result=TimeTableDetail::model()->findAllByAttributes(
								array(),
								$condition  = 'timetable_id = :table_id AND day = :day AND lec = :lec AND division_id = :div_id',
								$params     = array(
									':table_id' => $timetableid,
									':day' => $j,
						 			':lec' => $i,
									':div_id' =>$division_id,
									));
		$break=NoOfBreakTable::model()->findAllByAttributes(
								array(),
								$condition  = 'timetable_id = :table_id  AND after_lec_break = :lec',
								$params     = array(
									':table_id' => $timetableid,
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
				echo "<td rowspan=2 align=center style=color:".$check_type['subject_master_color_code'].";width:100px;>";				
				$tempi=$i;         
				$a[$ind]=$j;
				$ind++;
				
				
			}
			else
				echo "<td align=center style=color:".$check_type['subject_master_color_code'].";width:100px;>";				
					
			foreach($result as $check)
			{
				if($check_type['subject_master_type_id']==2)
				$batch="(".Batch::model()->findByPk($check->batch_id)->batch_name.")";
				$subname = SubjectMaster::model()->findByPk($check->subject_id)->subject_master_alias;
				$room="(".RoomDetailsMaster::model()->findByPk($check->room_id)->room_name.")";	
				$faculty="(".EmployeeInfo::model()->findByPk($check->faculty_emp_id)->employee_name_alias.")";
				if($batch)
				echo "</br>".$subname."</br>".$batch."</br>".$room."</br>".$faculty;
				else
				echo "</br>".$subname."</br>".$room."</br>".$faculty;
			}
			echo "</td>";
		}
		else
		{
			echo "<td style=width:100px;>".$subname."</br>".$batch."</br>".$room."</br>".$faculty."</td>";		
			
		}
		
	  }
echo "</tr>";
}
echo "</table>";



?>

