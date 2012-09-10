<?php
$this->breadcrumbs=array(
	'Lec Durations'=>array('index'),
	$model->id,
);

$this->menu=array(
	array('label'=>'List LecDuration', 'url'=>array('index')),
	array('label'=>'Create LecDuration', 'url'=>array('create')),
	array('label'=>'Update LecDuration', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete LecDuration', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage LecDuration', 'url'=>array('admin')),
);
?>

<h1>View LecDuration #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'lecture',
		'duration',
		'timetable_id',
		'lec_duration_org_id',
		'created_by',
		'creation_time',
	),
)); ?>
