<?php
$this->breadcrumbs=array(
	'Subject Refbooks',
);

$this->menu=array(
	//array('label'=>'Create SubjectRefbook', 'url'=>array('create')),
	//array('label'=>'Manage SubjectRefbook', 'url'=>array('admin')),
);
?>

<h1>Subject Refbooks</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
