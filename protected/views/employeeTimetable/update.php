<?php
$this->breadcrumbs=array(
	'Employee Timetables'=>array('index'),
	$model->id=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'List EmployeeTimetable', 'url'=>array('index')),
	array('label'=>'Create EmployeeTimetable', 'url'=>array('create')),
	array('label'=>'View EmployeeTimetable', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Manage EmployeeTimetable', 'url'=>array('admin')),
);
?>

<h1>Update EmployeeTimetable <?php echo $model->id; ?></h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>