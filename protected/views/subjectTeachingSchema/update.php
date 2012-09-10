<?php
$this->breadcrumbs=array(
	'Subject Teaching Schemas'=>array('subjectMaster/view','id'=>$model->subject_id),
	//$model->id=>array('view','id'=>$model->id),
	$model->id,
	'Update',
);

$this->menu=array(
	//array('label'=>'List subjectTeachingSchema', 'url'=>array('index')),
	//array('label'=>'Create subjectTeachingSchema', 'url'=>array('create')),
	//array('label'=>'View subjectTeachingSchema', 'url'=>array('view', 'id'=>$model->id)),
	//array('label'=>'Manage subjectTeachingSchema', 'url'=>array('admin')),
);
?>

<h1>Update subject Teaching Schemas <!--<?php echo $model->id; ?>--></h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>
