<?php
$this->breadcrumbs=array(
	'Assign Subjects'=>array('admin'),
	// $model->Rel_sub->subject_master_name=>array('view','id'=>$model->assign_subject_id),
	$model->Rel_sub->subject_master_name,
	'Update',
);

$this->menu=array(
	//array('label'=>'', 'url'=>array('index')),
	array('label'=>'', 'url'=>array('create'),'linkOptions'=>array('class'=>'Create','title'=>'Create')),
	array('label'=>'', 'url'=>array('view', 'id'=>$model->assign_subject_id),'linkOptions'=>array('class'=>'View','title'=>'View')),
	array('label'=>'', 'url'=>array('admin'),'linkOptions'=>array('class'=>'Manage','title'=>'Manage')),
);
?>

<h1>Update Assign Subject <?php //echo $model->assign_subject_id; ?></h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>
