<?php
$this->breadcrumbs=array(
	'Organizations'=>array('admin'),
	'Create',
);

$this->menu=array(
//	array('label'=>'List Organization', 'url'=>array('index')),
	array('label'=>'', 'url'=>array('admin'),'linkOptions'=>array('class'=>'Manage','title'=>'Manage')),
);
?>

<h1>Create Organization</h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>
