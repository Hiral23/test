<?php
$this->breadcrumbs=array(
	'Subject Types'=>array('admin'),
	'Create',
);

$this->menu=array(
//	array('label'=>'List SubjectType', 'url'=>array('index')),
	array('label'=>'', 'url'=>array('admin'),'linkOptions'=>array('class'=>'Manage','title'=>'Manage')),
);
?>

<h1>Create Subject Types</h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>
