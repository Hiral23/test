<?php
$this->breadcrumbs=array(
	'Givefeedbacks'=>array('index'),
	$model->id,
);

$this->menu=array(
	array('label'=>'List Givefeedback', 'url'=>array('index')),
	array('label'=>'Create Givefeedback', 'url'=>array('create')),
	array('label'=>'Update Givefeedback', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete Givefeedback', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage Givefeedback', 'url'=>array('admin')),
);
?>

<h1>View Givefeedback #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'question_id',
		'rank',
		'feedback_master_id',
	),
)); ?>
