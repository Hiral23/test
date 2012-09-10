<?php
$this->breadcrumbs=array(
	'Quotas'=>array('admin'),
	$model->quota_name,
);

$this->menu=array(
//	array('label'=>'List Quota', 'url'=>array('index')),
	array('label'=>'', 'url'=>array('create'),'linkOptions'=>array('class'=>'Create','title'=>'Create')),
	array('label'=>'', 'url'=>array('update', 'id'=>$model->quota_id),'linkOptions'=>array('class'=>'Edit','title'=>'Update')),
	array('label'=>'', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->quota_id),'confirm'=>'Are you sure you want to delete this item?', 'class'=>'Delete','title'=>'Delete')),
	array('label'=>'', 'url'=>array('admin'),'linkOptions'=>array('class'=>'Manage','title'=>'Manage')),
);
?>

<h1>View Quota</h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
//		'quota_id',
		'quota_name',
//		'quota_organization_id',
//		'quota_created_by',
		array('name'=>'quota_created_by',
			'value'=>User::model()->findByPk($model->quota_created_by)->user_organization_email_id,
		),

		'quota_created_date',
		array('name'=>'Organization:',
			'value'=>Organization::model()->findByPk($model->quota_organization_id)->organization_name,
			'filter' => false,

		),
	),
)); ?>
