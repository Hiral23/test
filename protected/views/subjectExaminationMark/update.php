<?php
$this->breadcrumbs=array(
	'Subject Examination Marks'=>array('subjectMaster/view','id'=>$model->subject_id),
	//$model->id=>array('view','id'=>$model->id),
	$model->id,
	'Update',
);

$this->menu=array(
	//array('label'=>'List SubjectExaminationMark', 'url'=>array('index')),
	//array('label'=>'Create SubjectExaminationMark', 'url'=>array('create')),
	//array('label'=>'View SubjectExaminationMark', 'url'=>array('view', 'id'=>$model->id)),
	//array('label'=>'Manage SubjectExaminationMark', 'url'=>array('admin')),
);
?>

<h1>Update Subject Examination Marks <?php //echo $model->id; ?></h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>
