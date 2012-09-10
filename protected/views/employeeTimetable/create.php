<?php
$this->breadcrumbs=array(
	'Employee Timetables'=>array('index'),
	'Create',
);

$this->menu=array(
	//array('label'=>'List EmployeeTimetable', 'url'=>array('index')),
	//array('label'=>'Manage EmployeeTimetable', 'url'=>array('admin')),
);
?>

<h1>Create EmployeeTimetable</h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>
