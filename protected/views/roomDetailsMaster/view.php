<?php
$this->breadcrumbs=array(
	'Room Details'=>array('admin'),
	$model->room_name,
);

$this->menu=array(
	//array('label'=>'', 'url'=>array('index'),'linkOptions'=>array('class'=>'List','title'=>'List')),
	array('label'=>'', 'url'=>array('create'),'linkOptions'=>array('class'=>'Create','title'=>'Create')),
	array('label'=>'', 'url'=>array('update', 'id'=>$model->id),'linkOptions'=>array('class'=>'Edit','title'=>'Update')),
	array('label'=>'', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?','class'=>'Delete','title'=>'Delete')),
	array('label'=>'', 'url'=>array('admin'),'linkOptions'=>array('class'=>'Manage','title'=>'Manage')),
);
?>

<h1>View Room Details <?php //echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		//'id',
		
		'room_name',
		'location',
		'seat_capacity',
		//'room_category',
		array('name'=>'room_category',
			'value'=>$model->category->category_name,
			),
		'no_of_banches',
		array('name'=>'remarks',
			'value'=>($model->remarks == null) ? "Not Set" :$model->category->category_name,
		),
		
	),
)); ?>
