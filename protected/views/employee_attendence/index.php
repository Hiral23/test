<?php
$this->breadcrumbs=array(
	'Employee Attendences',
);

$this->menu=array(
	array('label'=>'Create Employee_attendence', 'url'=>array('create')),
	array('label'=>'Manage Employee_attendence', 'url'=>array('admin')),
);
?>

<h1>Employee Attendences</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
