<?php
$this->breadcrumbs=array(
	'Fees Terms And Conditions'=>array('admin'),
	$model->term,
);

$this->menu=array(
	//array('label'=>'List FeesTermsAndCondition', 'url'=>array('index')),
	//array('label'=>'Create FeesTermsAndCondition', 'url'=>array('create')),
	//array('label'=>'Update FeesTermsAndCondition', 'url'=>array('update', 'id'=>$model->id)),
	//array('label'=>'Delete FeesTermsAndCondition', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	//array('label'=>'Manage FeesTermsAndCondition', 'url'=>array('admin')),

	array('label'=>'', 'url'=>array('create'),'linkOptions'=>array('class'=>'Create','title'=>'Create')),
	array('label'=>'', 'url'=>array('update', 'id'=>$model->id),'linkOptions'=>array('class'=>'Edit','title'=>'Update')),
	array('label'=>'', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?','class'=>'Delete','title'=>'Delete')),
	array('label'=>'', 'url'=>array('admin'),'linkOptions'=>array('class'=>'Manage','title'=>'Manage')),



);
?>

<h1>View Fees Terms And Conditions  <?php //echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		//'id',
		'term',
		//'created_by',
		array('name'=>'created_by',
			'value'=>User::model()->findByPk($model->created_by)->user_organization_email_id,
		),		
		'creation_date',
	),
)); ?>
