<?php
$this->breadcrumbs=array(
	'Subject Teaching Schemas',
);

$this->menu=array(
	//array('label'=>'Create subjectTeachingSchema', 'url'=>array('create')),
	//array('label'=>'Manage subjectTeachingSchema', 'url'=>array('admin')),
);
?>

<h1>Subject Teaching Schemas</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
