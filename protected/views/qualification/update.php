<?php
$this->breadcrumbs=array(
	'Qualifications'=>array('index'),
	//$model->qualification_name=>array('view','id'=>$model->qualification_id),
	$model->qualification_name,
	'Update',
);

$this->menu=array(

	array('label'=>'', 'url'=>array('create'),'linkOptions'=>array('class'=>'Create','title'=>'Create')),
//	array('label'=>'', 'url'=>array('index'),'linkOptions'=>array('class'=>'List','title'=>'List')),
	array('label'=>'', 'url'=>array('view', 'id'=>$model->qualification_id),'linkOptions'=>array('class'=>'View','title'=>'View')),
	array('label'=>'', 'url'=>array('admin'),'linkOptions'=>array('class'=>'Manage','title'=>'Manage')),
);
?>

<h1>Update Qualifications  <?php //echo $model->qualification_id; ?></h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>
