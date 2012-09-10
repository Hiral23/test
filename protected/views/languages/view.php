<?php
$this->breadcrumbs=array(
	'Languages'=>array('admin'),
	$model->languages_name,
);

$this->menu=array(
	//array('label'=>'', 'url'=>array('index')),
	array('label'=>'', 'url'=>array('create'),'linkOptions'=>array('class'=>'Create','title'=>'Create')),
	array('label'=>'', 'url'=>array('update', 'id'=>$model->languages_id),'linkOptions'=>array('class'=>'Edit','title'=>'Update')),
	array('label'=>'', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->languages_id),'confirm'=>'Are you sure you want to delete this item?', 'class'=>'Delete','title'=>'Delete')),
	array('label'=>'', 'url'=>array('admin'),'linkOptions'=>array('class'=>'Manage','title'=>'Manage')),
);
?>

<h1>View Languages  <?php //echo $model->languages_id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		//'languages_id',
		'languages_name',
		//'languages_organization_id',
		//'languages_created_by',
		array('name'=>'languages_created_by',
			'value'=>User::model()->findByPk($model->languages_created_by)->user_organization_email_id,
		),
		'languages_created_date',
		/*
		array('name'=>'Organization:',
			'value'=>Organization::model()->findByPk($model->languages_organization_id)->organization_name,
			'filter' => false,

		),*/
	),
)); ?>
