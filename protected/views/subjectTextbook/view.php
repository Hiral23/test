<?php
$this->breadcrumbs=array(
	'Subject Textbooks'=>array('index'),
	$model->title,
);

$this->menu=array(
	//array('label'=>'List SubjectTextbook', 'url'=>array('index')),
	//array('label'=>'Create SubjectTextbook', 'url'=>array('create')),
	//array('label'=>'Update SubjectTextbook', 'url'=>array('update', 'id'=>$model->id)),
	//array('label'=>'Delete SubjectTextbook', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	//array('label'=>'Manage SubjectTextbook', 'url'=>array('admin')),
);
?>

<h1>View SubjectTextbook #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'sub_id',
		'isbn_no',
		'title',
		'photo',
		'created_by',
		'created_date',
	),
)); ?>
