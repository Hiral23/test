<?php
$this->breadcrumbs=array(
	'Subject Guidelines',
);

$this->menu=array(
	//array('label'=>'Create SubjectGuidelines', 'url'=>array('create')),
	//array('label'=>'Manage SubjectGuidelines', 'url'=>array('admin')),
);
?>

<h1>Subject Guidelines</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
