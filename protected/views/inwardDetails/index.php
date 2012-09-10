<?php
$this->breadcrumbs=array(
	'Inward Details',
);

$this->menu=array(
	array('label'=>'Create InwardDetails', 'url'=>array('create')),
	array('label'=>'Manage InwardDetails', 'url'=>array('admin')),
);
?>

<h1>Inward Details</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
