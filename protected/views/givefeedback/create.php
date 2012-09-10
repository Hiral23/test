<?php
$this->breadcrumbs=array(
	'Givefeedbacks'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List Givefeedback', 'url'=>array('index')),
	array('label'=>'Manage Givefeedback', 'url'=>array('admin')),
);
?>

<h1>Create Givefeedback</h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>