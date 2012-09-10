<?php
$this->breadcrumbs=array(
	'Subject Guidelines'=>array('subjectMaster/view','id'=>$model->subject_id),
	//$model->guideline=>array('view','id'=>$model->id),
	$model->guideline,
	'Update',
);

$this->menu=array(
	//array('label'=>'List SubjectGuidelines', 'url'=>array('index')),
	//array('label'=>'Create SubjectGuidelines', 'url'=>array('create')),
	//array('label'=>'View SubjectGuidelines', 'url'=>array('view', 'id'=>$model->id)),
	//array('label'=>'Manage SubjectGuidelines', 'url'=>array('admin')),
);
?>

<h1>Update Subject Guidelines <?php //echo $model->id; ?></h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>
