<?php
$this->breadcrumbs=array(
	'Outwards'=>array('admin'),
	'Create',
);

$this->menu=array(
	//array('label'=>'List Outward', 'url'=>array('index')),
	array('label'=>'', 'url'=>array('admin'),'linkOptions'=>array('class'=>'Manage','title'=>'Manage')),
);
?>

<h1>Create Outward</h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>
