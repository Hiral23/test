<?php
$this->breadcrumbs=array(
	'Room Categories',
);

$this->menu=array(
	array('label'=>'Create RoomCategory', 'url'=>array('create')),
	array('label'=>'Manage RoomCategory', 'url'=>array('admin')),
);
?>

<h1>Room Categories</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
