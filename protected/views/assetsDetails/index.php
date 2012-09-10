<?php
$this->breadcrumbs=array(
	'Assets Details',
);

$this->menu=array(
	array('label'=>'Create assetsDetails', 'url'=>array('create')),
	array('label'=>'Manage assetsDetails', 'url'=>array('admin')),
);
?>

<h1>Assets Details</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
