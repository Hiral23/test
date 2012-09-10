<?php
$this->breadcrumbs=array(
	'Subject Syllabuses'=>array('subjectMaster/view','id'=>$model->sub_id),
	//$model->topic_name=>array('view','id'=>$model->id),
	$model->topic_name,
	'Update',
);

$this->menu=array(
	//array('label'=>'List SubjectSyllabus', 'url'=>array('index')),
	//array('label'=>'Create SubjectSyllabus', 'url'=>array('create')),
	//array('label'=>'View SubjectSyllabus', 'url'=>array('view', 'id'=>$model->id)),
	//array('label'=>'Manage SubjectSyllabus', 'url'=>array('admin')),
);
?>

<h1>Update Subject Syllabuses <?php //echo $model->id; ?></h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>
