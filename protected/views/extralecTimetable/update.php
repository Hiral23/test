<?php
$this->breadcrumbs=array(
	'Extralec Timetables'=>array('index'),
	$model->extratimetable_id=>array('view','id'=>$model->extratimetable_id),
	'Update',
);

$this->menu=array(
	array('label'=>'List ExtralecTimetable', 'url'=>array('index')),
	array('label'=>'Create ExtralecTimetable', 'url'=>array('create')),
	array('label'=>'View ExtralecTimetable', 'url'=>array('view', 'id'=>$model->extratimetable_id)),
	array('label'=>'Manage ExtralecTimetable', 'url'=>array('admin')),
);
?>

<h1>Update ExtralecTimetable <?php echo $model->extratimetable_id; ?></h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>