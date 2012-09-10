<?php
$this->breadcrumbs=array(
	'Subject Examination Marks'=>array('subjectMaster/view','id'=>$_REQUEST['id']),
	'Create',
);

$this->menu=array(
	//array('label'=>'List SubjectExaminationMark', 'url'=>array('index')),
	//array('label'=>'Manage SubjectExaminationMark', 'url'=>array('admin')),
);
?>

<h1>Create Subject Examination Marks</h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>
