<?php
$this->breadcrumbs=array(
	'Time Tables'=>array('admin'),
	//$model->timetable_id=>array('view','id'=>$model->timetable_id),
	$model->timetable_name,
	'Update',
);

$this->menu=array(
	
	array('label'=>'', 'url'=>array('admin'),'linkOptions'=>array('class'=>'Manage','title'=>'Manage')),
	
);

?>

<h1>Update TimeTable <?php //echo $model->timetable_id; ?></h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>
