<?php
$this->breadcrumbs=array(
	'Employee Timetables',
);

$this->menu=array(
	array('label'=>'Create EmployeeTimetable', 'url'=>array('create')),
	array('label'=>'Manage EmployeeTimetable', 'url'=>array('admin')),
);
?>

<h1>Employee Timetables</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
