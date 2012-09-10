<?php
$this->breadcrumbs=array(
	'Subject Refrence Book'=>array('subjectMaster/view','id'=>$model->sub_id),
	//$model->title=>array('view','id'=>$model->id),
	$model->title,
	'Update',
);

$this->menu=array(
	//array('label'=>'List SubjectRefbook', 'url'=>array('index')),
	//array('label'=>'Create SubjectRefbook', 'url'=>array('create')),
	//array('label'=>'View SubjectRefbook', 'url'=>array('view', 'id'=>$model->id)),
	//array('label'=>'Manage SubjectRefbook', 'url'=>array('admin')),
);
?>

<h1>Update Subject Reference Book <!--<?php echo $model->id; ?>--></h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>
