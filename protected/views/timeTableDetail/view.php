<?php
$this->breadcrumbs=array(
	'Time Table Details'=>array('index'),
	$model->timetable_detail_id,
);

/*$this->menu=array(
	array('label'=>'List TimeTableDetail', 'url'=>array('index')),
	array('label'=>'Create TimeTableDetail', 'url'=>array('create')),
	array('label'=>'Update TimeTableDetail', 'url'=>array('update', 'id'=>$model->timetable_detail_id)),
	array('label'=>'Delete TimeTableDetail', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->timetable_detail_id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage TimeTableDetail', 'url'=>array('admin')),
);*/
?>

<h1>View TimeTableDetail #<?php echo $model->timetable_detail_id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'timetable_detail_id',
		'subject_id',
		'faculty_emp_id',
		'branch_id',
		'acdm_period_id',
		'acdm_name_id',
		'room_id',
		'division_id',
		'batch_id',
		'created_by',
		'creation_date',
	),
)); ?>
