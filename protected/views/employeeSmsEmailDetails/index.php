<?php
$this->breadcrumbs=array(
	'Employee Sms Email Details',
);

$this->menu=array(
	//array('label'=>'Create EmployeeSmsEmailDetails', 'url'=>array('create')),
	//array('label'=>'Manage EmployeeSmsEmailDetails', 'url'=>array('admin')),

	array('label'=>'', 'url'=>array('create'),'linkOptions'=>array('class'=>'Create','title'=>'Create')),
	array('label'=>'', 'url'=>array('admin'),'linkOptions'=>array('class'=>'Manage','title'=>'Manage')),
);
?>

<h1>Employee Sms Email Details</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
