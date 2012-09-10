<?php
$this->breadcrumbs=array(
	'Subject Reference Book'=>array('subjectMaster/view','id'=>$_REQUEST['id']),
	'Create',
);

$this->menu=array(
	//array('label'=>'List SubjectRefbook', 'url'=>array('index')),
	//array('label'=>'Manage SubjectRefbook', 'url'=>array('admin')),
);
?>

<h1>Create Subject Reference Book</h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>
