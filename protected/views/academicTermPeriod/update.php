<?php
$this->breadcrumbs=array(
	'Academic Term Periods'=>array('index'),
	//$model->academic_term_period=>array('view','id'=>$model->academic_terms_period_id),
	$model->academic_term_period,
	'Update',
);

$this->menu=array(
//	array('label'=>'List AcademicTermPeriod', 'url'=>array('index')),
	array('label'=>'', 'url'=>array('create'),'linkOptions'=>array('class'=>'Create','title'=>'Create')),
	array('label'=>'', 'url'=>array('view', 'id'=>$model->academic_terms_period_id),'linkOptions'=>array('class'=>'View','title'=>'View')),
	array('label'=>'', 'url'=>array('admin'),'linkOptions'=>array('class'=>'Manage','title'=>'Manage')),
);
?>

<h1>Update Academic Term Periods<?php //echo $model->academic_terms_period_id; ?></h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>
