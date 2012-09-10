<?php
$this->breadcrumbs=array(
	'Subject Text Books'=>array('subjectMaster/view','id'=>$model->sub_id),
	//$model->title=>array('view','id'=>$model->id),
	$model->title,
	'Update',
);

$this->menu=array(
	//array('label'=>'List SubjectTextbook', 'url'=>array('index')),
	//array('label'=>'Create SubjectTextbook', 'url'=>array('create')),
	//array('label'=>'View SubjectTextbook', 'url'=>array('view', 'id'=>$model->id)),
	//array('label'=>'Manage SubjectTextbook', 'url'=>array('admin')),
);
?>

<h1>Update Subject Text Books <!--<?php echo $model->id; ?>--></h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>
