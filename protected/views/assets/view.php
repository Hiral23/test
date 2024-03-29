<?php
$this->breadcrumbs=array(
	'Assets'=>array('admin'),
	$model->id,
);

$this->menu=array(
//	array('label'=>'List assets', 'url'=>array('index')),
	array('label'=>'', 'url'=>array('create'),'linkOptions'=>array('class'=>'Create','title'=>'Create')),
	array('label'=>'', 'url'=>array('update', 'id'=>$model->id),'linkOptions'=>array('class'=>'Edit','title'=>'Update')),
	array('label'=>'', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?', 'class'=>'Delete','title'=>'Delete')),
	array('label'=>'', 'url'=>array('admin'),'linkOptions'=>array('class'=>'Manage','title'=>'Manage')),
);
?>

<h1>View assets <?php //echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'invoice_description',
		'company_name',
		'invoice_no_dc',
		'invoice_date',
		'received_date',
		'sender_name',
		'department',
		'photo',
		'document',
		'document_desc',
		'org_name_id',
		'no_of_packets',
		'receiver_name',
	),
)); ?>
