<?php
$this->breadcrumbs=array(
	'Subject Examination Marks',
);

$this->menu=array(
	//array('label'=>'Create SubjectExaminationMark', 'url'=>array('create')),
	//array('label'=>'Manage SubjectExaminationMark', 'url'=>array('admin')),
);
?>

<h1>Subject Examination Marks</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
