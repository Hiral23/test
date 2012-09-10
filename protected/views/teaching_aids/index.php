<?php
$this->breadcrumbs=array(
	'Teaching Aids',
);

$this->menu=array(
	array('label'=>'Create Teaching_aids', 'url'=>array('create')),
	array('label'=>'Manage Teaching_aids', 'url'=>array('admin')),
);
?>

<h1>Teaching Aids</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
