<?php
$this->breadcrumbs=array(
	'Assign Company'=>array('admin'),
	'Create',
);

$this->menu=array(
//	array('label'=>'', 'url'=>array('index')),
	array('label'=>'', 'url'=>array('admin'),'linkOptions'=>array('class'=>'Manage','title'=>'Manage')),
);
?>

<h1>Create Assign Company</h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>
