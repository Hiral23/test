<?php
$this->breadcrumbs=array(
	'Subject Guidelines'=>array('subjectMaster/view','id'=>$_REQUEST['id']),
	'Create',
);

$this->menu=array(
	//array('label'=>'List SubjectGuidelines', 'url'=>array('index')),
	//array('label'=>'Manage SubjectGuidelines', 'url'=>array('admin')),
);
?>

<h1>Create Subject Guideliness</h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>
