<?php
$this->breadcrumbs=array(
	'Extralec Timetables',
);

$this->menu=array(
	array('label'=>'Create ExtralecTimetable', 'url'=>array('create')),
	array('label'=>'Manage ExtralecTimetable', 'url'=>array('admin')),
);
?>

<h1>Extralec Timetables</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
