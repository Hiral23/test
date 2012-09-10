<?php
$this->breadcrumbs=array(
	'Employee Attendences'=>array('index'),
	$model->employee_attendence_id=>array('view','id'=>$model->employee_attendence_id),
	'Update',
);

$this->menu=array(
	array('label'=>'List Employee_attendence', 'url'=>array('index')),
	array('label'=>'Create Employee_attendence', 'url'=>array('create')),
	array('label'=>'View Employee_attendence', 'url'=>array('view', 'id'=>$model->employee_attendence_id)),
	array('label'=>'Manage Employee_attendence', 'url'=>array('admin')),
);
?>

<h1>Update Employee_attendence <?php //echo $model->employee_attendence_id; ?></h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>
