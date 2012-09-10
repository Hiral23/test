<?php
$this->breadcrumbs=array(
	'Fees Terms And Conditions'=>array('admin'),
	'Create',
);

$this->menu=array(
	//array('label'=>'List FeesTermsAndCondition', 'url'=>array('index')),
	//array('label'=>'Manage FeesTermsAndCondition', 'url'=>array('admin')),
	array('label'=>'', 'url'=>array('admin'),'linkOptions'=>array('class'=>'Manage','title'=>'Manage')),
);
?>

<h1>Create Fees Terms And Conditions</h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>
