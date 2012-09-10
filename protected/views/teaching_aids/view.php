<?php
$this->breadcrumbs=array(
	'Teaching Aids'=>array('index'),
	$model->teaching_aids_id,
);

$this->menu=array(
	//array('label'=>'List Teaching_aids', 'url'=>array('index')),
	array('label'=>'', 'url'=>array('create'),'linkOptions'=>array('class'=>'Create','title'=>'Create')),
	array('label'=>'', 'url'=>array('update', 'id'=>$model->teaching_aids_id),'linkOptions'=>array('class'=>'Edit','title'=>'Update')),
	array('label'=>'', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->teaching_aids_id),'confirm'=>'Are you sure you want to delete this item?','class'=>'Delete','title'=>'Delete')),
	array('label'=>'', 'url'=>array('admin'),'linkOptions'=>array('class'=>'Manage','title'=>'Manage')),
);
?>

<h1>View Teaching_aids #<?php echo $model->teaching_aids_id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		//'teaching_aids_id',
		'teaching_aids_name',
		'teaching_aids_alias',
		'remarks',
		//'teaching_aids_created_by',
		array('name'=>'created_by',
			'value'=>User::model()->findByPk($model->teaching_aids_created_by)->user_organization_email_id,
		),
		'teaching_aids_created_date',
	),
)); ?>
