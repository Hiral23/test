<?php
$this->breadcrumbs=array(
	'Student Sms Email Details',
);

$this->menu=array(
	//array('label'=>'Create StudentSmsEmailDetails', 'url'=>array('create')),
	//array('label'=>'Manage StudentSmsEmailDetails', 'url'=>array('admin')),

	array('label'=>'', 'url'=>array('create'),'linkOptions'=>array('class'=>'Create','title'=>'Create')),
	array('label'=>'', 'url'=>array('admin'),'linkOptions'=>array('class'=>'Manage','title'=>'Manage')),
);
?>

<h1>Student Sms Email Details</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
