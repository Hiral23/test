<?php
$this->breadcrumbs=array(
	'Qualifications'=>array('admin'),
	$model->qualification_name,
);

$this->menu=array(

	array('label'=>'', 'url'=>array('create'),'linkOptions'=>array('class'=>'Create','title'=>'Create')),
//	array('label'=>'', 'url'=>array('index'),'linkOptions'=>array('class'=>'List','title'=>'List')),
	array('label'=>'', 'url'=>array('update', 'id'=>$model->qualification_id),'linkOptions'=>array('class'=>'Edit','title'=>'Update')),
	array('label'=>'', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->qualification_id),'confirm'=>'Are you sure you want to delete this item?', 'class'=>'Delete','title'=>'Delete')),
	array('label'=>'', 'url'=>array('admin'),'linkOptions'=>array('class'=>'Manage','title'=>'Manage')),
	
);
?>

<h1>View Qualifications <?php //echo $model->qualification_id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
//		'qualification_id',
		'qualification_name',
//		'qualification_organization_id',
//		'qualification_created_by',
		array('name'=>'qualification_created_by',
			'value'=>User::model()->findByPk($model->qualification_created_by)->user_organization_email_id,
		),

		'qualification_created_date',
		/*
		array('name'=>'Organization:',
			'value'=>Organization::model()->findByPk($model->qualification_organization_id)->organization_name,
			'filter' => false,
		),*/
	),
)); ?>
