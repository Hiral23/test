<?php
$this->menu=array(
	
	//array('label'=>'', 'url'=>array('create'),'linkOptions'=>array('class'=>'Create','title'=>'Create timetable')),
	//array('label'=>'', 'url'=>array('admin'),'linkOptions'=>array('class'=>'Manage','title'=>'Manage')),
);


//echo CHtml::button('Goto Admin', array('class'=>'submit','submit' => array('timeTable/admin')));	
echo CHtml::link('GO BACK',Yii::app()->createUrl('timeTable/admin'));
$facultyname=EmployeeInfo::model()->findAll(array('condition'=>'employee_type=:x OR employee_type=:y ', 'params'=>array(':x'=>1,':y'=>2)));
$timetable_id=$_REQUEST['id'];
$model=TimeTable::model()->findByPk($timetable_id);
$sum=$model->No_of_Lec;
?>
<h4 align=center><u> Faculty Master Time Table(<?php echo $model->timetable_name; ?>) </u></h4>
<table id="time-table-struc" align=center border="1" style="width:3600px; font-size:12px;">
<?php 
$startk = 1;
if($model->zero_lec==1)
{
	$startk = 0;
}
if($startk == 0) {?>
	
	<th  align=center bgcolor=#F7BE81 rowspan=2>Faculty Name</th>
	<th  align=center bgcolor=#F7BE81 colspan="<?php echo $sum+1;?>">Monday</th>
	<th  align=center bgcolor=#F7BE81 colspan="<?php echo $sum+1;?>">Tuesday</th>
	<th  align=center bgcolor=#F7BE81 colspan="<?php echo $sum+1;?>">Wednesday</th>
	<th  align=center bgcolor=#F7BE81 colspan="<?php echo $sum+1;?>">Thursday</th>
	<th  align=center bgcolor=#F7BE81 colspan="<?php echo $sum+1;?>">Friday</th>
	<th  align=center bgcolor=#F7BE81 colspan="<?php echo $sum+1;?>">Saturday</th>
	<th align=center rowspan=2 >Total wkly load(Hrs)</th>
<?php }
else
{
?>
	
	<th  align=center bgcolor=#F7BE81 rowspan=2>Faculty Name</th>
	<th  align=center bgcolor=#F7BE81 colspan="<?php echo $sum;?>">Monday</th>
	<th  align=center bgcolor=#F7BE81 colspan="<?php echo $sum;?>">Tuesday</th>
	<th  align=center bgcolor=#F7BE81 colspan="<?php echo $sum;?>">Wednesday</th>
	<th  align=center bgcolor=#F7BE81 colspan="<?php echo $sum;?>">Thursday</th>
	<th  align=center bgcolor=#F7BE81 colspan="<?php echo $sum;?>">Friday</th>
	<th  align=center bgcolor=#F7BE81 colspan="<?php echo $sum;?>">Saturday</th>
	<th align=center rowspan=2 >Total wkly load(Hrs)</th>
<?php }?>
	
	
<?php	


$index=0;
foreach($facultyname as $fac)
{
$facid[$index] = EmployeeTransaction::model()->findByAttributes(array('employee_transaction_employee_id'=>$fac['employee_id']))->employee_transaction_id;
//$facid[$index]=$fac['employee_transaction_employee_id'];	//employee id 
$empname[$index]=$fac['employee_first_name']."<br/>".$fac['employee_last_name']; //employee name
$index++;
}	
$s = array();
$temp=0;
$flag=0;
$subname = 0;
$subtype = 0;
$subcolor =0;
$hour_count=0;
$total=0;
$hours=0;

for($i=1;$i<=(count($empname)+1);$i++) //because of above 1 rows 1 has been added 
{	
	echo "<tr>";	
	if($temp==0)			//for ignoring 1st row
	{	  
            $temp=1;
	}
	else	
	{	
	   
	     echo "<td  align=center>".$empname[$i-2]."</td>";	//Display employee name
		/*$hours=ExtralecTimetable::model()->count( 
					$condition  = 'faculty_id = :faculty_id AND acdm_period_id = :acm_period',
					$params     = array(
						':faculty_id' => $facid[$i-2],
						':acm_period' =>$acdm_year, 
					));*/
	}
	
	for($j=1;$j<7;$j++)
	{
		if($i==1 && $j==1)
		{
			
			if($startk==0)
			{
				
			for($k=$startk;$k<(($sum+1)*6);$k++)	//for mon to sat, 6 is multiply with $sum
			{	
				
				$lec=$k%($sum+1);
				echo "<td  align=center style=background-color:#F7BE81>".$lec."</td>";         	
				 		
				
			}// k loop
			}
			else
			{
				for($k=0;$k<(($sum)*6);$k++)	//for mon to sat, 6 is multiply with $sum
				{	
				$lec=($k%$sum)+1;
				 
				echo "<td  align=center style=background-color:#F7BE81>".$lec."</td>";         	
				 
				}// k loop
			
			}
			echo "</tr>";
			break;
			

			
		}//if
		else
		{			
			for($k=$startk;$k<$sum+1;$k++)
			{	
				
				$check_day=TimeTableDetail::model()->findByAttributes(array('day'=>$j,'lec'=>$k,'faculty_emp_id'=>$facid[$i-2],'timetable_id'=>$timetable_id));
				if($check_day)				
				{
					$subname = SubjectMaster::model()->findByPk($check_day->subject_id)->subject_master_alias;
					$subtype = SubjectMaster::model()->findByPk($check_day->subject_id)->subject_master_type_id;
					$subcolor = SubjectMaster::model()->findByPk($check_day->subject_id)->subject_master_color_code;
					$div=Division::model()->findByPk($check_day->division_id)->division_code;
					$room=RoomDetailsMaster::model()->findByPk($check_day->room_id)->room_name;
					if($subtype==2)
					{
						
						$batch=Batch::model()->findByPk($check_day->batch_id)->batch_name;	
						echo "<td align=center colspan=2 style=color:".$subcolor.";background:#C0C0C0;width:100px;>".$subname."<br/>(".$div.")"."(".$batch.")"."(".$room.")"."</td>";
						$hour_count+=2;
						
						$k+=1;
										
					}
					else
					{
						echo "<td  align=center style=color:".$subcolor.";width:100px;>".$subname."<br/>(".$div.")"."(".$room.")"."</td>";
						$hour_count++;
					}
	
				}
				else
				{
					echo "<td align=center width=100px> &nbsp; </td>";
				}

							
				
			}//k loop
		}//else
		if($j==6){
		$total+=$hour_count;
		if($hours>0)
		{
			
			echo "<td align=center width=100px >$hour_count+$hours</td>";
			$total+=$hours;
		}
		else
		echo "<td align=center width=100px >$hour_count</td>";
		$hour_count=0;
			
		}
		
		
	}// j loop
	
	
}// i loop

	echo "<tr ><td colspan=42 align=center width=100px></td><td align=center>Total</td><td align=center>$total</td></tr>";
echo "</table>";

?>

