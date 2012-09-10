<?php
$this->breadcrumbs=array(
	'Employee Docs Trans'=>array('index'),
	'Create',
);

?>

<h1>Create Employee Document</h1>

<?php echo $this->renderPartial('_form', array('model'=>$model,'emp_doc'=>$emp_doc)); ?>
