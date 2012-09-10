<?php
$this->breadcrumbs=array(
	'Nationality'=>array('admin'),
	$model->nationality_name,
);

$this->menu=array(
//	array('label'=>'List Nationality', 'url'=>array('index')),
	array('label'=>'', 'url'=>array('create'),'linkOptions'=>array('class'=>'Create','title'=>'Create')),
	array('label'=>'', 'url'=>array('update', 'id'=>$model->nationality_id),'linkOptions'=>array('class'=>'Edit','title'=>'Update')),
	array('label'=>'', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->nationality_id),'confirm'=>'Are you sure you want to delete this item?', 'class'=>'Delete','title'=>'Delete')),
	array('label'=>'', 'url'=>array('admin'),'linkOptions'=>array('class'=>'Manage','title'=>'Manage')),
);
?>

<h1>View Nationality </h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
//		'nationality_id',
		'nationality_name',
//		'nationality_organization_id',
//		'nationality_created_by',
		array('name'=>'nationality_created_by',
			'value'=>User::model()->findByPk($model->nationality_created_by)->user_organization_email_id,
		),

		'nationality_created_date',
		/*
		array('name'=>'Organization:',
			'value'=>Organization::model()->findByPk($model->nationality_organization_id)->organization_name,
			'filter' => false,

		),*/
	),
)); ?>
