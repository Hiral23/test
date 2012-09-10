<?php
$this->breadcrumbs=array(
	'No Of Break Tables'=>array('index'),
	$model->id,
);

$this->menu=array(
	array('label'=>'List NoOfBreakTable', 'url'=>array('index')),
	array('label'=>'Create NoOfBreakTable', 'url'=>array('create')),
	array('label'=>'Update NoOfBreakTable', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete NoOfBreakTable', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage NoOfBreakTable', 'url'=>array('admin')),
);
?>

<h1>View NoOfBreakTable #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'timetable_id',
		'day',
		'after_lec_break',
		'branch_id',
		'div_id',
		'acdm_period_id',
		'acdm_name_id',
	),
)); ?>
