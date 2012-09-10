<?php
$this->breadcrumbs=array(
	'Givefeedbacks',
);

$this->menu=array(
	array('label'=>'Create Givefeedback', 'url'=>array('create')),
	array('label'=>'Manage Givefeedback', 'url'=>array('admin')),
);
?>

<h1>Givefeedbacks</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
