<?php
$this->breadcrumbs=array(
	'Subject Masters'=>array('admin'),
	//$model->subject_master_name=>array('view','id'=>$model->subject_master_id),
	$model->subject_master_name,
	'Update',
);

$this->menu=array(
//	array('label'=>'List SubjectMaster', 'url'=>array('index')),
	array('label'=>'', 'url'=>array('create'),'linkOptions'=>array('class'=>'Create','title'=>'Create')),
	array('label'=>'', 'url'=>array('view', 'id'=>$model->subject_master_id),'linkOptions'=>array('class'=>'View','title'=>'View')),
	array('label'=>'', 'url'=>array('admin'),'linkOptions'=>array('class'=>'Manage','title'=>'Manage')),
);
?>

<h1>Update Subjects <?php //echo $model->subject_master_id; ?></h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>
