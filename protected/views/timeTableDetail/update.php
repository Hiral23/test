<?php
$this->breadcrumbs=array(
	'Time Table Details'=>array('index'),
	$model->timetable_detail_id=>array('view','id'=>$model->timetable_detail_id),
	'Update',
);

/*$this->menu=array(
	array('label'=>'List TimeTableDetail', 'url'=>array('index')),
	array('label'=>'Create TimeTableDetail', 'url'=>array('create')),
	array('label'=>'View TimeTableDetail', 'url'=>array('view', 'id'=>$model->timetable_detail_id)),
	array('label'=>'Manage TimeTableDetail', 'url'=>array('admin')),
);*/
?>

<h1>Update TimeTableDetail <?php //echo $model->timetable_detail_id; ?></h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>
