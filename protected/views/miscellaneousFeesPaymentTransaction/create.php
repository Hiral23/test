<?php
$this->breadcrumbs=array(
	'Miscellaneous Fees Payment '=>array('madmin'),
	
	'Create',
);

$this->menu=array(
//	array('label'=>'', 'url'=>array('index')),
//	array('label'=>'', 'url'=>array('admin'),'linkOptions'=>array('class'=>'Manage','title'=>'Manage')),
);
?>

<h1>Create Miscellaneous Fees Payment </h1>

<?php echo $this->renderPartial('_form', array('model'=>$model,'cash_model'=>$cash_model ,'cheque_model'=>$cheque_model)); ?>
