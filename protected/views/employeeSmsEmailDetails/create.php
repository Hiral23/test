<?php
$this->breadcrumbs=array(
	'Employee Sms Email Details'=>array('index'),
	'Create',
);

$this->menu=array(
	//array('label'=>'List EmployeeSmsEmailDetails', 'url'=>array('index')),
	//array('label'=>'Manage EmployeeSmsEmailDetails', 'url'=>array('admin')),

	array('label'=>'', 'url'=>array('index'),'linkOptions'=>array('class'=>'List','title'=>'List')),
	array('label'=>'', 'url'=>array('admin'),'linkOptions'=>array('class'=>'Manage','title'=>'Manage')),
);
?>

<h1>Create EmployeeSmsEmailDetails</h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>


