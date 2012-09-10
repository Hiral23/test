<?php
$this->breadcrumbs=array(
	'No Of Break Tables',
);

$this->menu=array(
	array('label'=>'Create NoOfBreakTable', 'url'=>array('create')),
	array('label'=>'Manage NoOfBreakTable', 'url'=>array('admin')),
);
?>

<h1>No Of Break Tables</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
