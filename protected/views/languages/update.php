<?php
$this->breadcrumbs=array(
	'Languages'=>array('admin'),
	//$model->languages_name=>array('view','id'=>$model->languages_id),
	$model->languages_name,
	'Update',
);

$this->menu=array(
	//array('label'=>'List Languages', 'url'=>array('index')),
	array('label'=>'', 'url'=>array('create'),'linkOptions'=>array('class'=>'Create','title'=>'Create')),
	array('label'=>'', 'url'=>array('view', 'id'=>$model->languages_id),'linkOptions'=>array('class'=>'View','title'=>'View')),
	array('label'=>'', 'url'=>array('admin'),'linkOptions'=>array('class'=>'Manage','title'=>'Manage')),
);
?>

<h1>Update Languages  <?php //echo $model->languages_id; ?></h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>