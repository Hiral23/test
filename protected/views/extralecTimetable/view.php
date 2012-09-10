<?php
$this->breadcrumbs=array(
	'Extralec Timetables'=>array('index'),
	$model->extratimetable_id,
);

$this->menu=array(
	array('label'=>'List ExtralecTimetable', 'url'=>array('index')),
	array('label'=>'Create ExtralecTimetable', 'url'=>array('create')),
	array('label'=>'Update ExtralecTimetable', 'url'=>array('update', 'id'=>$model->extratimetable_id)),
	array('label'=>'Delete ExtralecTimetable', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->extratimetable_id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage ExtralecTimetable', 'url'=>array('admin')),
);
?>

<h1>View ExtralecTimetable #<?php echo $model->extratimetable_id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'extratimetable_id',
		'timetable_id',
		'faculty_id',
		'branch_id',
		'day',
	),
)); ?>
