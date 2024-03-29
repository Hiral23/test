<?php
$this->breadcrumbs=array(
	'Time Tables'=>array('index'),
	$model->timetable_id,
);

$this->menu=array(
	array('label'=>'List TimeTable', 'url'=>array('index')),
	array('label'=>'Create TimeTable', 'url'=>array('create')),
	array('label'=>'Update TimeTable', 'url'=>array('update', 'id'=>$model->timetable_id)),
	array('label'=>'Delete TimeTable', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->timetable_id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage TimeTable', 'url'=>array('admin')),
);
?>

<h1>View TimeTable #<?php echo $model->timetable_id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'timetable_id',
		'timetable_name',
		'clg_start_time',
		'timetable_branch_id',
			
		'timetable_acdm_term_period_id',
		'timetable_acdm_term_name_id',
	),
)); ?>
