<?php
$this->breadcrumbs=array(
	'Attendences'=>array('admin'),
	'Create',
);

$this->menu=array(
	//array('label'=>'List Attendence', 'url'=>array('index')),
	array('label'=>'', 'url'=>array('admin'),'linkOptions'=>array('class'=>'Manage','title'=>'Manage')),
);
?>

<h1>Studentwise Report</h1>

<?php echo $this->renderPartial('stud_report', array('model'=>$model)); ?>
