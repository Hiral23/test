<?php
$this->breadcrumbs=array(
	'Feedback Masters'=>array('admin'),
	'Create',
);

$this->menu=array(
//	array('label'=>'', 'url'=>array('index')),
	array('label'=>'', 'url'=>array('admin'),'linkOptions'=>array('class'=>'Manage','title'=>'Manage')),
);
?>

<h1>Create Feedback Master</h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>