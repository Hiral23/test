<?php
$this->menu=array(
	
	//array('label'=>'', 'url'=>array('create'),'linkOptions'=>array('class'=>'Create','title'=>'Create timetable')),
	//array('label'=>'', 'url'=>array('admin'),'linkOptions'=>array('class'=>'Manage','title'=>'Manage')),
);

$nooflec = $model->No_of_Lec;
$noofbreak = $model->No_Of_Break;
$timetableid = $model->timetable_id;
$academic_period = $model->timetable_acdm_term_period_id;


$sum = $nooflec ;
//echo CHtml::button('Go Back', array('class'=>'submit','submit' => array('timeTable/admin')));	
echo CHtml::link('GO BACK',Yii::app()->createUrl('timeTable/admin')); 
?>
<h1 align=center><u>Time Table (<?php echo AcademicTermPeriod::model()->findByPk($academic_period)->academic_term_period;?>) </u></h1>
<table id="time-table-struc" align=center border="1">
<?php 
$startk = 1;
if($model->zero_lec==1)
{
	$startk = 0;
}
if($startk == 0) {?>
	<th  align=center bgcolor=#ECECEC rowspan=2>Hours</th>
	<th  align=center bgcolor=#ECECEC rowspan=2>Faculty Name</th>
	<th  align=center bgcolor=#ECECEC colspan="<?php echo $sum+1;?>">Monday</th>
	<th  align=center bgcolor=#ECECEC colspan="<?php echo $sum+1;?>">Tuesday</th>
	<th  align=center bgcolor=#ECECEC colspan="<?php echo $sum+1;?>">Wednesday</th>
	<th  align=center bgcolor=#ECECEC colspan="<?php echo $sum+1;?>">Thursday</th>
	<th  align=center bgcolor=#ECECEC colspan="<?php echo $sum+1;?>">Friday</th>
	<th  align=center bgcolor=#ECECEC colspan="<?php echo $sum+1;?>">Saturday</th>
<?php }
else
{
?>
	<th  align=center bgcolor=#ECECEC rowspan=2>Hours</th>
	<th  align=center bgcolor=#ECECEC rowspan=2>Faculty Name</th>
	<th  align=center bgcolor=#ECECEC colspan="<?php echo $sum;?>">Monday</th>
	<th  align=center bgcolor=#ECECEC colspan="<?php echo $sum;?>">Tuesday</th>
	<th  align=center bgcolor=#ECECEC colspan="<?php echo $sum;?>">Wednesday</th>
	<th  align=center bgcolor=#ECECEC colspan="<?php echo $sum;?>">Thursday</th>
	<th  align=center bgcolor=#ECECEC colspan="<?php echo $sum;?>">Friday</th>
	<th  align=center bgcolor=#ECECEC colspan="<?php echo $sum;?>">Saturday</th>
<?php }?>

<?php	
$facultyname=EmployeeInfo::model()->findAll(array('condition' => 'employee_type = 1'));
$index=0;

foreach($facultyname as $fac)
{
$facid[$index]=$fac['employee_id'];	//employee id 
$empname[$index]=$fac['employee_name_alias']; //employee name
$index++;
}
$count=0;	
$time=$model->clg_start_time; 

$s = array();
$temp=0;
for($i=1;$i<=(count($empname)+1);$i++) //because of above 1 rows 1 has been added 
{	
	echo "<tr>";
	$count=0;	

	if($temp==0)			//for ignoring 1st row
	{	  
            $temp=1;
	}
	else	
	{
	    
	    $wload=TimeTableDetail::model()->findAllByAttributes(
								array(),
								$condition  = 'faculty_emp_id = :faculty_emp_id AND timetable_id = :timetable_id',
								$params     = array(
									':faculty_emp_id' => $facid[$i-2],						 			':timetable_id' => $timetableid,
									));
		foreach($wload as $wl)
		{
			if($wl['subject_type']==2)
			{
				$count+=2;
			}
			else
			{
				$count+=1;
			}
		}

	     echo "<td align=center style=background-color:#ECECEC>".$count."</td><td  align=center>".CHtml::link($empname[$i-2],array('faculty_timetable_report','id'=>$timetableid,'faculty_id'=>$facid[$i-2]),array('style'=>'color:red'))."</td>";	//Display employee name
	     	
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
				$id=LecDuration::model()->findByAttributes(array('timetable_id'=>$model->timetable_id,'lecture'=>$lec));
				// echo "<td  align=center >".(($k%($sum+1)))."</td>";    
				echo "<td  align=center style=background-color:#ECECEC>".CHtml::link($lec.'('.$id['duration']."Min)",array('LecDuration/update/'.$id['id']))."</td>";         	
				 		
				
			}// k loop
			}
			else
			{
				for($k=0;$k<(($sum)*6);$k++)	//for mon to sat, 6 is multiply with $sum
				{	
				$lec=($k%$sum)+1;
				$id=LecDuration::model()->findByAttributes(array('timetable_id'=>$model->timetable_id,'lecture'=>$lec));
				 
				echo "<td  align=center style=background-color:#ECECEC>".CHtml::link($lec.'('.$id['duration']."Min)",array('LecDuration/update/'.$id['id']))."</td>";                 	
				 
				}// k loop
			
			}
			echo "</tr>";
			break;
			
		}//if
		else
		{			
			for($k=$startk;$k<$sum+1;$k++)
			{				
				
			$check_day=TimeTableDetail::model()->findByAttributes(array('day'=>$j,'lec'=>$k,'faculty_emp_id'=>$facid[$i-2],'timetable_id'=>$timetableid));
				$row = count($check_day);
				if($row)				//check if lect is already assign or not
				{
					
					$subname = SubjectMaster::model()->findByPk($check_day->subject_id)->subject_master_name;
					$subtype = SubjectMaster::model()->findByPk($check_day->subject_id)->subject_master_type_id;
						
					$subcolor = SubjectMaster::model()->findByPk($check_day->subject_id)->subject_master_color_code;
					$room_name=RoomDetailsMaster::model()->findByPk($check_day->room_id)->room_name;
					$branch_name=Branch::model()->findByPk($check_day->branch_id)->branch_alias;
					$division_name=Division::model()->findByPk($check_day->division_id)->division_code;

					if($subtype==2)
					{
						echo "<td  align=center colspan=2 style=background-color:#ECECEC>".CHtml::link($subname." , ".$room_name." , ".$division_name,array('timeTableDetail/update','id'=>$check_day->timetable_detail_id,'timetable_id'=>$timetableid,'day'=>$j,'lec'=>$k,'faculty_emp_id'=>$facid[$i-2],'acdm_period_id'=>$model->timetable_acdm_term_period_id),array('id'=>'table1'.$i.$j.$k,'style'=>'color:'.$subcolor))."<br/>".CHtml::link('<img src='.Yii::app()->baseUrl.'/images/delete1.png>',array('timeTable/DeleteSubjectRecord','timetableid'=>$timetableid,'day'=>$j,'lec'=>$k,'faculty_emp_id'=>$facid[$i-2]), array('confirm' => 'Are you sure to delete this Record?'))."</td>";
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
				$this->widget('application.extensions.fancybox.EFancyBox', array('target'=>'#table1'.$i.$j.$k, 'config'=>$config));					
					$k=$k+1;
					
					}
					else
					{
						echo "<td  align=center style=background-color:#ECECEC>".CHtml::link($subname." , ".$room_name." , ".$division_name,array('timeTableDetail/update','id'=>$check_day->timetable_detail_id,'timetable_id'=>$timetableid,'day'=>$j,'lec'=>$k,'faculty_emp_id'=>$facid[$i-2],'acdm_period_id'=>$model->timetable_acdm_term_period_id),array('id'=>'table'.$i.$j.$k,'style'=>'color:'.$subcolor))."<br/>".CHtml::link('<img src='.Yii::app()->baseUrl.'/images/delete1.png>',array('timeTable/DeleteSubjectRecord','timetableid'=>$timetableid,'day'=>$j,'lec'=>$k,'faculty_emp_id'=>$facid[$i-2]), array('confirm' => 'Are you sure to delete this Record?'))."</td>";
					
					}// $subtype else end
				
				}//row if end
				else
				{	
					echo "<td  align=center>".CHtml::link('+sub',array('timeTableDetail/create','day'=>$j,'lec'=>$k,'faculty_emp_id'=>$facid[$i-2],'timetable_id'=>$timetableid, 'acdm_period_id'=>$model->timetable_acdm_term_period_id),array('id'=>'tableid'.$i.$j.$k,'style'=>'color:black'))."</td>";
			
				}//row else end			
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
				$this->widget('application.extensions.fancybox.EFancyBox', array('target'=>'#table'.$i.$j.$k, 'config'=>$config));
				
			   		//echo "<td> - </td>";
				}//k loop
			}//else
		}// j loop

	echo "</tr>";
}// i loop

echo "</table>";

?>
<div class="row buttons">
		<?php //echo CHtml::button('Add Faculty' , array('class'=>'submit','submit' => array('EmployeeTimetable/create','id'=>$timetableid)))."</br>";
		      echo CHtml::button('Add Break' , array('class'=>'submit','submit' => array('noOfBreakTable/create','id'=>$timetableid)))."</br>";

		//echo CHtml::button('Show Student TimeTable' , array('class'=>'submit','submit' => array('Timetable_report','id'=>$timetableid)))."</br>";
		//echo CHtml::button('Show Other Faculty TimeTable' , array('class'=>'submit','submit' => array('Employeelist','id'=>$timetableid)))."</br>";
		//echo CHtml::button('Add Extra Lec' , array('class'=>'submit','submit' => array('extralecTimetable/create','id'=>$timetableid,'acdm_period_id'=>$model->timetable_acdm_term_period_id,'acdm_name_id'=>$model->timetable_acdm_term_name_id)));			
?>
</div>

<?php
/* 
if(!empty($extralecmodel))
{
$this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'extralec-timetable-grid',
	'dataProvider'=>$extralecmodel->search(),
	//'filter'=>$extralecmodel,
	'columns'=>array(
		//'extratimetable_id',
		array(
			'name'=>'timetable_id',
			'value'=>'Timetable::model()->findByPk($data->timetable_id)->timetable_name',
		    ),
		array(
			'name'=>'subject_id',
			'value'=>'SubjectMaster::model()->findByPk($data->subject_id)->subject_master_name',
		    ),
		array(
			'name'=>'faculty_id',
			'value'=>'EmployeeInfo::model()->findByPk($data->faculty_id)->employee_name_alias',
		    ),
		array(
			'name'=>'branch_id',
			'value'=>'Branch::model()->findByPk($data->branch_id)->branch_name',
		    ),
		'day_name',
		array(
			'name'=>'room_id',
			'value'=>'RoomDetailsMaster::model()->findByPk($data->room_id)->room_name',
		    ),
		array(
			'class'=>'CButtonColumn',
			'template' => '{update}{delete}',//{Add Fees}{Add Fees1}',
			'buttons'=>array(
				/*'view' => array(
				                'label'=>'View', // text label of the button
						'url'=>'Yii::app()->createUrl("extralecTimetable/view", array("id"=>$data->extratimetable_id))',
				        ),*//*
				'update' => array(
				                'label'=>'View', // text label of the button
						'url'=>'Yii::app()->createUrl("extralecTimetable/update", array("id"=>$data->extratimetable_id,"timetableid"=>$data->timetable_id))',
				        ),
				'delete' => array(
				                'label'=>'View', // text label of the button
						'url'=>'Yii::app()->createUrl("extralecTimetable/delete", array("id"=>$data->extratimetable_id))',
				        ),
				),
		),
	),
));
}*/
 ?>

