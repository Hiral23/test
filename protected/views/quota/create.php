<?php
$this->breadcrumbs=array(
	'Quotas'=>array('admin'),
	'Create',
);

$this->menu=array(
//	array('label'=>'List Quota', 'url'=>array('index')),
	array('label'=>'', 'url'=>array('admin'),'linkOptions'=>array('class'=>'Manage','title'=>'Manage')),
);
?>

<h1>Create Quota</h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>
