<?php
$this->breadcrumbs=array(
	'Outward Details'=>array('admin'),
	//$model->name=>array('view','id'=>$model->id),
	$model->name,
	'Update',
);

$this->menu=array(
//	array('label'=>'List OutwardDetails', 'url'=>array('index')),
	array('label'=>'', 'url'=>array('create'),'linkOptions'=>array('class'=>'Create','title'=>'Create')),
	array('label'=>'', 'url'=>array('view', 'id'=>$model->id),'linkOptions'=>array('class'=>'View','title'=>'View')),
	array('label'=>'', 'url'=>array('admin'),'linkOptions'=>array('class'=>'Manage','title'=>'Manage')),
);
?>

<h1>Update Outward Details  <?php //echo $model->id; ?></h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>
