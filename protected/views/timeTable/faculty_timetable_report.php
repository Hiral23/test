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
	
	//array('label'=>'', 'url'=>array('create'),'linkOptions'=>array('class'=>'Create','title'=>'Create timetable')),
	//array('label'=>'', 'url'=>array('admin'),'linkOptions'=>array('class'=>'Manage','title'=>'Manage')),
);
$day = array(" ","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday");
 
$nooflec = $model->No_of_Lec;
$noofbreak = $model->No_Of_Break;
$timetableid = $model->timetable_id;
$sum = $nooflec + $noofbreak;
//$branch = Branch::model()->findByPk($model->timetable_branch_id)->branch_name;
/*$div =TimeTableDetail::model()->findAllByAttributes(array(),
								$condition  = 'timetable_id = :table_id ', 
								$params     = array(
									':table_id' => $timetableid,));*/
$div = Yii::app()->db->createCommand()
	    ->selectDistinct('division_id')
	    ->from('time_table_detail')
	    ->where('timetable_id='.$timetableid)
    	    ->queryAll();

echo CHtml::link('GO BACK',Yii::app()->createUrl('timeTable/CreateFinaltable/'.$timetableid),array('id'=>"printid")); 

$lec_duration=LecDuration::model()->findAllByAttributes(array(),
								$condition  = 'timetable_id = :table_id ', 
								$params     = array(
									':table_id' => $timetableid,
									));
$lec=array();
foreach($lec_duration as $l)
$lec[]=$l['duration'];

$starti = 1;
if($model->zero_lec==1)
{
	$starti = 0;
}


$time=$model->clg_start_time;
$time = date('H:i A',strtotime($time));
$createdate = date_create($model->creation_date);
?>

<h4><u>Faculty Time Table </u></h4>
<h5>Name: <?php echo EmployeeInfo::model()->findbyPk($_REQUEST['faculty_id'])->employee_first_name." ".EmployeeInfo::model()->findbyPk($_REQUEST['faculty_id'])->employee_last_name;?></h5>
<h5> w.e.f:<?php echo  date_format($createdate, 'd-m-Y'); ?></h5>
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
$l=0;
$break="";
$count=0;
$a=array();
$a[0]=0;
$ind=0;
$dur1=0;



for($i=$starti;$i<=$nooflec;$i++)
{
$days=count($day);
echo "<tr>";
//echo "<td>".$time."-".date('g:i:s A', strtotime($time) + 60*60)."</td><td>".$i."</td>";           	

		$duration = NoOfBreakTable::model()->findByAttributes(
								 array(
									'timetable_id' => $timetableid,
									'after_lec_break' => $i,
									));
		

		if($duration){
			$dur = $duration['duration'];
			$dur1=date('i',strtotime($dur));
		}		
		
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
	//++$l;
		echo "<td style=width:100px;>".$time."-</br>".date('g:i A', strtotime($time) + 60*$lec[$l])."</td><td align='center' style=width:25px;>".$i."</td>";

			$timestamp = strtotime($time) + 60*$lec[$l];
			
		$l=$l+1;
			$time = date('g:i A', $timestamp);
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
								$condition  = 'day = :day AND lec = :lec AND faculty_emp_id = :emp_id AND timetable_id = :timetable_id',
								$params     = array(
									//':table_id' => $timetableid,
									':day' => $j,
						 			':lec' => $i,
									':emp_id'=>$_REQUEST['faculty_id'],
									':timetable_id'=>$timetableid,
									));
		$break=NoOfBreakTable::model()->findAllByAttributes(
								array(),
								$condition  = 'after_lec_break = :lec AND timetable_id = :table_id',
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
				$batch="(".Batch::model()->findByPk($check->batch_id)->batch_code.")";				
				$subname = SubjectMaster::model()->findByPk($check->subject_id)->subject_master_alias;
				$room="(".RoomDetailsMaster::model()->findByPk($check->room_id)->room_name.")";	
				$div=Division::model()->findByPk($check->division_id)->division_code;
				$faculty="(".EmployeeInfo::model()->findByPk($check->faculty_emp_id)->employee_name_alias.")";
				if($batch)
				echo "</br>".$subname."</br>".$batch."</br>".$room;
				else
				echo "</br>".$subname."</br>"."(".$div.")"."</br>".$room;
			}
			echo "</td>";
		}
		else
		{
			echo "<td style=width:150px;>".$subname."</br>".$batch."</br>".$room."</td>";		
			
		}
		
	  }
echo "</tr>";
}

echo "</table>";


?>

</body>
</html>

