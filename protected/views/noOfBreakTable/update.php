<?php
$this->breadcrumbs=array(
	'No Of Break Tables'=>array('index'),
	$model->id=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'List NoOfBreakTable', 'url'=>array('index')),
	array('label'=>'Create NoOfBreakTable', 'url'=>array('create')),
	array('label'=>'View NoOfBreakTable', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Manage NoOfBreakTable', 'url'=>array('admin')),
);
?>

<h1>Update NoOfBreakTable <?php echo $model->id; ?></h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>