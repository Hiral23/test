<?php
$this->breadcrumbs=array(
	'Room Category'=>array('admin'),
	'Create',
);

$this->menu=array(
//	array('label'=>'', 'url'=>array('index'),'linkOptions'=>array('class'=>'List','title'=>'List')),
	array('label'=>'', 'url'=>array('admin'),'linkOptions'=>array('class'=>'Manage','title'=>'Manage')),
);
?>

<h1>Create Room Category</h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>
