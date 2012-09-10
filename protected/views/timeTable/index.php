<?php
$this->breadcrumbs=array(
	'Time Tables',
);

$this->menu=array(
	array('label'=>'Create TimeTable', 'url'=>array('create')),
	array('label'=>'Manage TimeTable', 'url'=>array('admin')),
);
?>

<h1>Time Tables</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
