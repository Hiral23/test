<?php
$this->breadcrumbs=array(
	'Designations'=>array('admin'),
	'Create',
);

$this->menu=array(
//	array('label'=>'', 'url'=>array('index')),
	array('label'=>'', 'url'=>array('admin'),'linkOptions'=>array('class'=>'Manage','title'=>'Manage')),
);
?>

<h1>Create Designation</h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>
