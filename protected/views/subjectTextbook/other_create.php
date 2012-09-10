<?php
$this->breadcrumbs=array(
	'Subject Text Books'=>array('subjectMaster/view','id'=>$_REQUEST['id']),
	'Create',
);

$this->menu=array(
	//array('label'=>'List SubjectRefbook', 'url'=>array('index')),
	//array('label'=>'Manage SubjectRefbook', 'url'=>array('admin')),
);
?>

<h1>Create Subject Text Books</h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>
