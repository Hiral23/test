<?php
$this->breadcrumbs=array(
	'Feedback Masters',
);

$this->menu=array(
	array('label'=>'Create FeedbackMaster', 'url'=>array('create')),
	array('label'=>'Manage FeedbackMaster', 'url'=>array('admin')),
);
?>

<h1>Feedback Masters</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
