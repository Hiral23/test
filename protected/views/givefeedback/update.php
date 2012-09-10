<?php
$this->breadcrumbs=array(
	'Givefeedbacks'=>array('index'),
	$model->id=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'List Givefeedback', 'url'=>array('index')),
	array('label'=>'Create Givefeedback', 'url'=>array('create')),
	array('label'=>'View Givefeedback', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Manage Givefeedback', 'url'=>array('admin')),
);
?>

<h1>Update Givefeedback <?php echo $model->id; ?></h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>