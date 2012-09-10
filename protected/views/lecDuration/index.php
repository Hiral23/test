<?php
$this->breadcrumbs=array(
	'Lec Durations',
);

$this->menu=array(
	array('label'=>'Create LecDuration', 'url'=>array('create')),
	array('label'=>'Manage LecDuration', 'url'=>array('admin')),
);
?>

<h1>Lec Durations</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
