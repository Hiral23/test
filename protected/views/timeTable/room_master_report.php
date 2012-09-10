<?php
$this->menu=array(
	
	//array('label'=>'', 'url'=>array('create'),'linkOptions'=>array('class'=>'Create','title'=>'Create timetable')),
	//array('label'=>'', 'url'=>array('admin'),'linkOptions'=>array('class'=>'Manage','title'=>'Manage')),
);


//echo CHtml::button('Goto Admin', array('class'=>'submit','submit' => array('timeTable/admin')));	
echo CHtml::link('GO BACK',Yii::app()->createUrl('timeTable/admin'));
$roomname=RoomDetailsMaster::model()->findAll();
$timetable_id= $_REQUEST['id'];
$model=TimeTable::model()->findByPk($_REQUEST['id']);
$sum=$model->No_of_Lec;
 ?>
<h4 align=center><u> Room Master Report(<?php echo $model->timetable_name; ?>) </u></h4>
<table id="time-table-struc" align=center border="1" style="width:3600px; font-size:12px;">
<?php 
$startk = 1;
if($model->zero_lec==1)
{
	$startk = 0;
}
if($startk == 0) {?>
	
	<th  align=center bgcolor=#F7BE81 rowspan=2>Room Name</th>
	<th  align=center bgcolor=#F7BE81 colspan="<?php echo $sum+1;?>">Monday</th>
	<th  align=center bgcolor=#F7BE81 colspan="<?php echo $sum+1;?>">Tuesday</th>
	<th  align=center bgcolor=#F7BE81 colspan="<?php echo $sum+1;?>">Wednesday</th>
	<th  align=center bgcolor=#F7BE81 colspan="<?php echo $sum+1;?>">Thursday</th>
	<th  align=center bgcolor=#F7BE81 colspan="<?php echo $sum+1;?>">Friday</th>
	<th  align=center bgcolor=#F7BE81 colspan="<?php echo $sum+1;?>">Saturday</th>
<?php }
else
{
?>
	
	<th  align=center bgcolor=#F7BE81 rowspan=2>Room Name</th>
	<th  align=center bgcolor=#F7BE81 colspan="<?php echo $sum;?>">Monday</th>
	<th  align=center bgcolor=#F7BE81 colspan="<?php echo $sum;?>">Tuesday</th>
	<th  align=center bgcolor=#F7BE81 colspan="<?php echo $sum;?>">Wednesday</th>
	<th  align=center bgcolor=#F7BE81 colspan="<?php echo $sum;?>">Thursday</th>
	<th  align=center bgcolor=#F7BE81 colspan="<?php echo $sum;?>">Friday</th>
	<th  align=center bgcolor=#F7BE81 colspan="<?php echo $sum;?>">Saturday</th>
<?php }?>

	
<?php	


$index=0;
foreach($roomname as $rm)
{
$roomid[$index]=$rm['id'];	//room id 
$roomname[$index]=$rm['room_name']; //room name
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
for($i=1;$i<=(count($roomname)+1);$i++) //because of above 1 rows 1 has been added 
{	
	echo "<tr>";	
	if($temp==0)			//for ignoring 1st row
	{	  
            $temp=1;
	}
	else	
	{	
	     //echo "<td  align=center>".$roomname[$i-2]."</td>";	//Display employee name
	     echo "<td  align=center >".CHtml::link($roomname[$i-2],array('timeTable/RoomReport','timetable_id'=>$timetable_id,'room_id'=>$roomid[$i-2]),array('style'=>'color:green'))."</td>";
		
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
		
		//	echo "</tr>":
			break;
			
		}//if
		else
		{			
			for($k=$startk;$k<$sum+1;$k++)
			{	
				//echo $i.$j.$k."</br>";

				$check_room=TimeTableDetail::model()->findByAttributes(array('day'=>$j,'lec'=>$k,'room_id'=>$roomid[$i-2],'timetable_id'=>$timetable_id));
				if($check_room)				
				{
					$subname = SubjectMaster::model()->findByPk($check_room->subject_id)->subject_master_alias;
					$subtype = SubjectMaster::model()->findByPk($check_room->subject_id)->subject_master_type_id;
					$subcolor = SubjectMaster::model()->findByPk($check_room->subject_id)->subject_master_color_code;
					$div=Division::model()->findByPk($check_room->division_id)->division_code;
					$facultyname=EmployeeInfo::model()->findByPk($check_room['faculty_emp_id'])->employee_name_alias;
					//$room=RoomDetailsMaster::model()->findByPk($check_day->room_id)->room_name;
					if($subtype==2)
					{
						
						$batch=Batch::model()->findByPk($check_room->batch_id)->batch_name;	
						echo "<td align=center colspan=2 style=color:".$subcolor.";background:#C0C0C0;width:100px;>".$subname."<br/>(".$div.")"."(".$batch.")"."(".$facultyname.")"."</td>";
						$k+=1;
										
					}
					else
					{
						echo "<td  align=center style=color:".$subcolor.";width:100px;>".$subname."<br/>(".$div.")</br>"."(".$facultyname.")"."</td>";
					}
						
	
				}
				else
				{
					echo "<td align=center width=100px> &nbsp; </td>";
				}

							
				
			}//k loop
		}//else
		
		
		
	}// j loop
	
	
}// i loop

	//echo "<tr ><td colspan=42 align=center width=100px></td><td align=center>Total</td><td align=center>$total</td></tr>";
echo "</table>";

?>

