<?php
$this->breadcrumbs=array(
	'Attendences'=>array('admin'),
	$model->rel_atd_student->student_first_name,
	'Update',
);

$this->menu=array(
	//array('label'=>'List Attendence', 'url'=>array('index')),
	//array('label'=>'', 'url'=>array('create'),'linkOptions'=>array('class'=>'Create','title'=>'Create')),
	//array('label'=>'', 'url'=>array('view', 'id'=>$model->id),'linkOptions'=>array('class'=>'View','title'=>'View')),
	array('label'=>'', 'url'=>array('admin'),'linkOptions'=>array('class'=>'Manage','title'=>'Manage')),
);
?>

<h1>Update Attendence <?php //echo $model->id; ?></h1>

<?php echo $this->renderPartial('update_atten_form', array('model'=>$model)); ?>