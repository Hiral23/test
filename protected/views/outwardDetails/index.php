<?php
$this->breadcrumbs=array(
	'Outward Details',
);

$this->menu=array(
	array('label'=>'Create OutwardDetails', 'url'=>array('create')),
	array('label'=>'Manage OutwardDetails', 'url'=>array('admin')),
);
?>

<h1>Outward Details</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
