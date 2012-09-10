<?php
$this->breadcrumbs=array(
	'Outwards',
);

$this->menu=array(
	array('label'=>'Create Outward', 'url'=>array('create')),
	array('label'=>'Manage Outward', 'url'=>array('admin')),
);
?>

<h1>Outwards</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
