<?php
$this->menu=array(
	
	//array('label'=>'', 'url'=>array('create'),'linkOptions'=>array('class'=>'Create','title'=>'Create timetable')),
	array('label'=>'', 'url'=>array('admin'),'linkOptions'=>array('class'=>'Manage','title'=>'View Timetable')),
);


$nooflec = $model->No_of_Lec;
$noofbreak = $model->No_Of_Break;
$timetableid = $model->timetable_id;
?>
<h1 align=center><u>Time Table </u></h1>
<table border=2 align=center>
	<th>No</th>
	<th>Monday</th>


	<th>Tuesday</th>


	<th>Wednesday</th>


	<th>Thursday</th>


	<th>Friday</th>


	<th>Saturday</th>


<?php

$sum = $nooflec + $noofbreak;
       
for($i=1;$i<=$sum;$i++)
{
	$temp=0;
 echo "<tr>";
 for($j=0;$j<7;$j++)
 {
	if($temp==0)
	{
	echo "<td>".$i."</td>";
	$temp=1;
	}
	else
	{
		//echo "<td>"."lecture"."</td>";	
		//echo "<td><a href=# > Add Time Table</a></td>";
		$check_day = TimeTableDetail::model()->find('day=:day AND lec=:lec AND timetable_id=:timetable_id',
								array(
								  ':day'=>$j,
								  ':lec'=>$i,
								  ':timetable_id'=>$timetableid,
								));
		$row = count($check_day);

		if($row > 0)
		{
			//echo $check_day->timetable_detail_id;
			
			echo "<td>".CHtml::link('Update',array('timeTableDetail/update','id'=>$check_day->timetable_detail_id),array('id'=>'tableid'.$i.$j))."</td>";
		}
		else
		{
			//echo "<td>".CHtml::link('Add Time Table',array('timeTableDetail/create','day'=>$j,'lec'=>$i,'nooflec'=>$nooflec,'noofbreak'=>$noofbreak),array('id'=>'tableid'.$i.$j,'onclick'=>"this.style.color='#ff0000'"))."</td>";
			//echo "<td>".CHtml::link('Add Time Table',array('timeTableDetail/create','day'=>$j,'lec'=>$i,'timetableid'=>$timetableid),array('id'=>'tableid'.$i.$j))."</td>";

			echo "<td>".CHtml::link('Add Time Table',array('timeTableDetail/create/','day'=>$j,'lec'=>$i,'timetableid'=>$timetableid),array('id'=>'tableid'.$i.$j))."</td>";
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
		$this->widget('application.extensions.fancybox.EFancyBox', array('target'=>'#tableid'.$i.$j, 'config'=>$config));
	}
 }
 echo "</tr>";
}
echo "</table>";
?>
<div class="row buttons">
		<?php echo CHtml::button('View Timetable', array('submit' => array('CreateFinaltable','id'=>$model->timetable_id))); ?>
</div>
