<?php
$this->breadcrumbs=array(
	'Lec Durations'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List LecDuration', 'url'=>array('index')),
	array('label'=>'Manage LecDuration', 'url'=>array('admin')),
);
?>

<h1>Create LecDuration</h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>