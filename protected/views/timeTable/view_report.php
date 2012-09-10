<?php
$this->menu=array(
	
	//array('label'=>'', 'url'=>array('create'),'linkOptions'=>array('class'=>'Create','title'=>'Create timetable')),
	//array('label'=>'', 'url'=>array('admin'),'linkOptions'=>array('class'=>'Manage','title'=>'Manage')),
);

$nooflec = $model->No_of_Lec;
$noofbreak = $model->No_Of_Break;
$timetableid = $model->timetable_id;
$sum = $nooflec + $noofbreak;
echo CHtml::button('Go Back', array('class'=>'submit','submit' => array('timeTable/admin')));	

?>
<h1 align=center><u>Time Table </u></h1>
<table id="time-table-struc" align=center border="1">
	<th  align=center rowspan=2>Faculty Name</th>
	<th  align=center colspan="<?php echo $sum;?>">Monday</th>
	<th  align=center colspan="<?php echo $sum;?>">Tuesday</th>
	<th  align=center colspan="<?php echo $sum;?>">Wednesday</th>
	<th  align=center colspan="<?php echo $sum;?>">Thursday</th>
	<th  align=center colspan="<?php echo $sum;?>">Friday</th>
	<th  align=center colspan="<?php echo $sum;?>">Saturday</th>

<?php	
$facultyname=EmployeeTimetable::model()->findAllByAttributes( 
	array(),
        $condition  = 'timetable_id = :table_id',
        $params     = array(
                ':table_id' => $timetableid, 
	));
$index=0;
foreach($facultyname as $fac)
{
$facid[$index]=$fac['employee_id'];	//employee id 
$empname[$index]=EmployeeInfo::model()->findByPk($fac['employee_id'])->employee_first_name." ".EmployeeInfo::model()->findByPk($fac['employee_id'])->employee_last_name; //employee name
$index++;
}	
$time=$model->clg_start_time;

$s = array();
$temp=0;
for($i=1;$i<=(count($empname)+1);$i++) //because of above 1 rows 1 has been added 
{	
	echo "<tr>";	
	if($temp==0)			//for ignoring 1st row
	{	  
            $temp=1;
	}
	else	
	{	
	     echo "<td  align=center>".($empname[$i-2])."</td>";	//Display employee name
	}
	for($j=1;$j<7;$j++)
	{
		if($i==1 && $j==1)
		{
			
			for($k=0;$k<($sum*6);$k++)	//for mon to sat, 6 is multiply with $sum
			{	
				if($k%$sum==0)
				{
					$time=$model->clg_start_time;
				}
				 echo "<td  align=center >".(($k%$sum)+1)."</td>";                	
				 $timestamp = strtotime($time) + 60*60;
				$time = date('H:i:s', $timestamp);
						
				
			}// k loop
			echo "</tr>";
			break;
			
		}//if
		else
		{			
			for($k=1;$k<=$sum;$k++)
			{				
				$check_day=TimeTableDetail::model()->findByAttributes(array('day'=>$j,'lec'=>$k,'faculty_emp_id'=>$facid[$i-2],'timetable_id'=>$timetableid));
				$row = count($check_day);
				if($row)				//check if lect is already assign or not
				{
					$subname = SubjectMaster::model()->findByPk($check_day->subject_id)->subject_master_name;
					echo "<td  align=center>".CHtml::link($subname,array('timeTableDetail/update','id'=>$check_day->timetable_detail_id,'timetableid'=>$timetableid,'day'=>$j,'lec'=>$k,'faculty_emp_id'=>$facid[$i-2]),array('id'=>'tableid'.$i.$j.$k,'style'=>'color:red'))."</td>";
				}
				else
				{
					echo "<td  align=center>".CHtml::link('Add',array('timeTableDetail/create','day'=>$j,'lec'=>$k,'faculty_emp_id'=>$facid[$i-2],'timetableid'=>$timetableid),array('id'=>'tableid'.$i.$j.$k,))."</td>";
				}

				/* for display from in fancybox */		
				$config = array( 
					'scrolling' => 'no',
					'autoDimensions' => false,
					'width' => 'auto',
					'height' => 'auto', 
				 //   'titleShow' => false,
				       'overlayColor' => '#000',
				       'padding' => '0',
				       'showCloseButton' => true,			
				       'onClose' => function() {
						return window.location.reload();
					},

				// change this as you need
				);
				$this->widget('application.extensions.fancybox.EFancyBox', array('target'=>'#tableid'.$i.$j.$k, 'config'=>$config));
			   		//echo "<td> - </td>";
				}//k loop
			}//else
		}// j loop

	echo "</tr>";
}// i loop

echo "</table>";

?>
<div class="row buttons">
		<?php echo CHtml::button('Add Faculty' , array('class'=>'submit','submit' => array('EmployeeTimetable/create','id'=>$timetableid)));
			 ?>
</div>

