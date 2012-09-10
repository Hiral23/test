<?php
$this->breadcrumbs=array(
	'Subject Types'=>array('admin'),
	$model->subject_type_name,
);

$this->menu=array(
//	array('label'=>'List SubjectType', 'url'=>array('index')),
	array('label'=>'', 'url'=>array('create'),'linkOptions'=>array('class'=>'Create','title'=>'Create')),
	array('label'=>'', 'url'=>array('update', 'id'=>$model->subject_type_id),'linkOptions'=>array('class'=>'Edit','title'=>'Update')),
	array('label'=>'', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->subject_type_id),'confirm'=>'Are you sure you want to delete this item?', 'class'=>'Delete','title'=>'Delete')),
	array('label'=>'', 'url'=>array('admin'),'linkOptions'=>array('class'=>'Manage','title'=>'Manage')),
);
?>

<h1>View Subject Types <?php //echo $model->subject_type_id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
//		'subject_type_id',
		'subject_type_name',
//		'subject_organization_id',
		

		array(
			'name'=>'subject_active',
			'value'=>($model->subject_active == 1) ?  "Active" : "Inactive",
		),
		
		
//		'subject_modified_user',
		array('name'=>'subject_modified_user',
			'value'=>User::model()->findByPk($model->subject_modified_user)->user_organization_email_id,
		),
		'subject_modified_date',
		/*
		array('name' => 'Organization:',
	              'value' => $model->Rel_org_id->organization_name,
                     ),*/

	),
)); ?>
