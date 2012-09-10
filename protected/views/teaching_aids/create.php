<?php
$this->breadcrumbs=array(
	'Teaching Aids'=>array('index'),
	'Create',
);

$this->menu=array(
	//array('label'=>'List Teaching_aids', 'url'=>array('index')),
	array('label'=>'', 'url'=>array('admin'),'linkOptions'=>array('class'=>'Manage','title'=>'Manage')),
);
?>

<h1>Create Teaching_aids</h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>
