<?php
$this->breadcrumbs=array(
	'Visitor Passes'=>array('admin'),
	'Create',
);

$this->menu=array(
//	array('label'=>'List VisitorPass', 'url'=>array('index')),
	array('label'=>'', 'url'=>array('admin'),'linkOptions'=>array('class'=>'Manage','title'=>'Manage')),
);
?>

<h1>Create Visitor Pass</h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>
