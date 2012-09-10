<?php
$this->breadcrumbs=array(
	'Student Sms Email Details'=>array('index'),
	'Create',
);

$this->menu=array(
	//array('label'=>'List StudentSmsEmailDetails', 'url'=>array('index')),
	//array('label'=>'Manage StudentSmsEmailDetails', 'url'=>array('admin')),

	array('label'=>'', 'url'=>array('admin'),'linkOptions'=>array('class'=>'Manage','title'=>'Manage')),
	//array('label'=>'', 'url'=>array('index'),'linkOptions'=>array('class'=>'List','title'=>'List')),
);
?>

<h1>Create Student Sms Email Details</h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>
