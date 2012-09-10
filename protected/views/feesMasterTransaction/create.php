<?php
$this->breadcrumbs=array(
	'Fees Details'=>array('admin'),
	'Create',
);

$this->menu=array(
	//array('label'=>'List FeesMasterTransaction', 'url'=>array('index')),
	//array('label'=>'Manage FeesMasterTransaction', 'url'=>array('admin')),
);
?>

<h1>Create Fees Details </h1>

<?php echo $this->renderPartial('_form', array('model'=>$model, 'fees_details'=>$fees_details)); ?>
