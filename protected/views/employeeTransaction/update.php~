<?php
$this->breadcrumbs=array(
	'Employee'=>array('admin'),
	$model->Rel_Emp_Info->employee_first_name,
	'Update',
);

$this->menu=array(
/*	array('label'=>'List EmployeeTransaction', 'url'=>array('index')),*/
	array('label'=>'', 'url'=>array('create'),'linkOptions'=>array('class'=>'Create','title'=>'Create')),
	array('label'=>'', 'url'=>array('final_view', 'id'=>$model->employee_transaction_id),'linkOptions'=>array('class'=>'View','title'=>'View')),
	array('label'=>'', 'url'=>array('admin'),'linkOptions'=>array('class'=>'Manage','title'=>'Manage')),
);
?>

<h1>Update Employee <?php //echo $model->employee_transaction_id; ?></h1>

<?php echo $this->renderPartial('_form', array('model'=>$model,'info'=>$info,'photo'=>$photo,'address'=>$address,'lang'=>$lang)); ?>
