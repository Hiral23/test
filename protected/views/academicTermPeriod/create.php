<?php
$this->breadcrumbs=array(
	'Academic Term Periods'=>array('index'),
	'Create',
);

$this->menu=array(
//	array('label'=>'', 'url'=>array('index')),
	array('label'=>'', 'url'=>array('admin'),'linkOptions'=>array('class'=>'Manage','title'=>'Manage')),
);
?>

<h1>Create Academic Term Periods</h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>
