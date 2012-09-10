<?php
$this->breadcrumbs=array(
	'Subject Textbooks',
);

$this->menu=array(
	//array('label'=>'Create SubjectTextbook', 'url'=>array('create')),
	//array('label'=>'Manage SubjectTextbook', 'url'=>array('admin')),
);
?>

<h1>Subject Textbooks</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
