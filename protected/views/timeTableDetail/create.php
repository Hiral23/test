<?php
$this->breadcrumbs=array(
	'Time Table Details'=>array('index'),
	'Create',
);

/*$this->menu=array(
	array('label'=>'List TimeTableDetail', 'url'=>array('index')),
	array('label'=>'Manage TimeTableDetail', 'url'=>array('admin')),
);*/
?>

<h1>Create TimeTableDetail</h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>
