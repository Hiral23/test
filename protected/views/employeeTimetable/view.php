<?php
$this->breadcrumbs=array(
	'Employee Timetables'=>array('index'),
	$model->id,
);

$this->menu=array(
	array('label'=>'List EmployeeTimetable', 'url'=>array('index')),
	array('label'=>'Create EmployeeTimetable', 'url'=>array('create')),
	array('label'=>'Update EmployeeTimetable', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete EmployeeTimetable', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage EmployeeTimetable', 'url'=>array('admin')),
);
?>

<h1>View EmployeeTimetable #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'employee_id',
		'timetable_id',
	),
)); ?>
