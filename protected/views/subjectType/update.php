<?php
$this->breadcrumbs=array(
	'Subject Types'=>array('admin'),
	//$model->subject_type_name=>array('view','id'=>$model->subject_type_id),
	$model->subject_type_name,	
	'Update',
);

$this->menu=array(
//	array('label'=>'List SubjectType', 'url'=>array('index')),
	array('label'=>'', 'url'=>array('create'),'linkOptions'=>array('class'=>'Create','title'=>'Create')),
	array('label'=>'', 'url'=>array('view', 'id'=>$model->subject_type_id),'linkOptions'=>array('class'=>'View','title'=>'View')),
	array('label'=>'', 'url'=>array('admin'),'linkOptions'=>array('class'=>'Manage','title'=>'Manage')),
);
?>

<h1>Update Subject Types  <?php //echo $model->subject_type_id; ?></h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>
