<?php
$this->breadcrumbs=array(
	'Academic Term'=>array('index'),
	//$model->academic_term_name=>array('view','id'=>$model->academic_term_id),
	$model->academic_term_name,
	'Update',
);

$this->menu=array(
	array('label'=>'', 'url'=>array('index')),
	array('label'=>'', 'url'=>array('create'),'linkOptions'=>array('class'=>'Create','title'=>'Create')),
	array('label'=>'', 'url'=>array('view', 'id'=>$model->academic_term_id),'linkOptions'=>array('class'=>'View','title'=>'View')),
	array('label'=>'', 'url'=>array('admin'),'linkOptions'=>array('class'=>'Manage','title'=>'Manage')),
);
?>

<h1>Update Academic Term <?php //echo $model->academic_term_id; ?></h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>
