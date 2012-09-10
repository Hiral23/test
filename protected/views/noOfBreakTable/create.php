<?php
$this->breadcrumbs=array(
	'No Of Break Tables'=>array('index'),
	'Create',
);

$this->menu=array(
	//array('label'=>'List NoOfBreakTable', 'url'=>array('index')),
	//array('label'=>'Manage NoOfBreakTable', 'url'=>array('admin')),
);
?>

<h1>Create NoOfBreakTable</h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>
