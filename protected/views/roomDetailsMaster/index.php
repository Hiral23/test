<?php
$this->breadcrumbs=array(
	'Room Details Masters',
);

$this->menu=array(
	array('label'=>'Create RoomDetailsMaster', 'url'=>array('create')),
	array('label'=>'Manage RoomDetailsMaster', 'url'=>array('admin')),
);
?>

<h1>Room Details Masters</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
