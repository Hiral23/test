<?php
$this->breadcrumbs=array(
	'Actual Plan'=>array('subjectMaster/view','id'=>$model->sub_id),
	'Create',
);

$this->menu=array(
	//array('label'=>'List SubjectSyllabus', 'url'=>array('index')),
	//array('label'=>'Manage SubjectSyllabus', 'url'=>array('admin')),
);
?>

<h1>Create Actual Plan</h1>

<?php echo $this->renderPartial('actualplan_create', array('model'=>$model)); ?>
