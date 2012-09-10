<?php
$this->breadcrumbs=array(
	'Visitor Passes'=>array('admin'),
	$model->visitor_name,
	'Update',
);

$this->menu=array(
//	array('label'=>'List VisitorPass', 'url'=>array('index')),
	array('label'=>'', 'url'=>array('create'),'linkOptions'=>array('class'=>'Create','title'=>'Create')),
	array('label'=>'', 'url'=>array('new_view', 'id'=>$model->pass_no),'linkOptions'=>array('class'=>'View','title'=>'View')),
	array('label'=>'', 'url'=>array('admin'),'linkOptions'=>array('class'=>'Manage','title'=>'Manage')),
);
?>

<h1>Update Visitor Pass <?php //echo $model->pass_no; ?></h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>
