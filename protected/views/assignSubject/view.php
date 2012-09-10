<?php
$this->breadcrumbs=array(
	'Assign Subjects'=>array('admin'),
	 $model->Rel_sub->subject_master_name,
);

$this->menu=array(
	//array('label'=>'', 'url'=>array('index')),
	array('label'=>'', 'url'=>array('create'),'linkOptions'=>array('class'=>'Create','title'=>'Create')),
	array('label'=>'', 'url'=>array('update', 'id'=>$model->assign_subject_id),'linkOptions'=>array('class'=>'Edit','title'=>'Update')),
	array('label'=>'', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->assign_subject_id),'confirm'=>'Are you sure you want to delete this item?', 'class'=>'Delete','title'=>'Delete')),
	array('label'=>'', 'url'=>array('admin'),'linkOptions'=>array('class'=>'Manage','title'=>'Manage')),
);
?>

<h1>View Assign Subject <?php //echo $model->assign_subject_id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		//'assign_subject_id',
		//'subject_id',
		array('name' => 'subject_id',
	              'value' => $model->Rel_sub->subject_master_name,
                     ),
		array('name' => 'subject_faculty_id',
		      'value' => $model->Rel_Emp_Id->employee_first_name,
                     ),
		//'subject_faculty_id',
		array(
			'name'=>'active',
			'value'=>($model->active == 1) ?  "Active" : "Inactive",
		),
		
		//'updated_date',
		//'updated_user',
	),
)); ?>
