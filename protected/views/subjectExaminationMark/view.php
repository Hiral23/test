<?php
$this->breadcrumbs=array(
	'Subject Examination Marks'=>array('index'),
	$model->id,
);

$this->menu=array(
	//array('label'=>'List SubjectExaminationMark', 'url'=>array('index')),
	//array('label'=>'Create SubjectExaminationMark', 'url'=>array('create')),
	//array('label'=>'Update SubjectExaminationMark', 'url'=>array('update', 'id'=>$model->id)),
	//array('label'=>'Delete SubjectExaminationMark', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	//array('label'=>'Manage SubjectExaminationMark', 'url'=>array('admin')),
);
?>

<h1>View SubjectExaminationMark #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'subject_id',
		'university_mark',
		'midsem_mark',
		'practical_mark',
		'created_by',
		'creation_date',
	),
)); ?>
