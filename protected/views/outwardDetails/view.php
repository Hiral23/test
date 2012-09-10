<?php
$this->breadcrumbs=array(
	'Outward Details'=>array('admin'),
	$model->name,
);

$this->menu=array(
//	array('label'=>'', 'url'=>array('index')),
	array('label'=>'', 'url'=>array('create'),'linkOptions'=>array('class'=>'Create','title'=>'Create')),
	array('label'=>'', 'url'=>array('update', 'id'=>$model->id),'linkOptions'=>array('class'=>'Edit','title'=>'Update')),
	array('label'=>'', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?', 'class'=>'Delete','title'=>'Delete')),
	array('label'=>'', 'url'=>array('admin'),'linkOptions'=>array('class'=>'Manage','title'=>'Manage')),
);
?>

<h1>View Outward Details : <?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'outward_id',
		'name',
		'description',
		'quantity',
		//'item_category_id',
		array(
			'name'=>'item_category_id',
			'value'=>$model->itemCategory->cat_name,
		),
		'rate',
		'amount',
	),
)); ?>
