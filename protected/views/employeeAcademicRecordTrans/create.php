<?php
$this->breadcrumbs=array(
	'Employee Academic Record Trans'=>array('index'),
	'Create',
);

$this->menu=array(

//	array('label'=>'', 'url'=>array('index'),'linkOptions'=>array('class'=>'List','title'=>'List')),
	array('label'=>'', 'url'=>array('admin'),'linkOptions'=>array('class'=>'Manage','title'=>'Manage')),

);
?>

<h1>Create Employee Academic Record</h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>
