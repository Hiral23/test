<?php
$this->breadcrumbs=array(
	'City'=>array('admin'),
	//$model->city_name=>array('view','id'=>$model->city_id),
	$model->city_name,
	'Update',
);

$this->menu=array(
	//array('label'=>'', 'url'=>array('index')),
	array('label'=>'', 'url'=>array('create'),'linkOptions'=>array('class'=>'Create','title'=>'Create')),
	array('label'=>'', 'url'=>array('view', 'id'=>$model->city_id),'linkOptions'=>array('class'=>'View','title'=>'View')),
	array('label'=>'', 'url'=>array('admin'),'linkOptions'=>array('class'=>'Manage','title'=>'Manage')),
);
?>

<h1>Update City  <?php //echo $model->city_id; ?></h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>
