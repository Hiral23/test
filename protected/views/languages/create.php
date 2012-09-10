<?php
$this->breadcrumbs=array(
	'Languages'=>array('admin'),
	'Create',
);

$this->menu=array(
	//array('label'=>'List Languages', 'url'=>array('index')),
	array('label'=>'', 'url'=>array('admin'),'linkOptions'=>array('class'=>'Manage','title'=>'Manage')),
);
?>

<h1>Create Languages</h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>
