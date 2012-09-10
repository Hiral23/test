<?php
$this->breadcrumbs=array(
	'Employee Sms Email Details'=>array('admin'),
	$model->rel_emp_sms_info->employee_first_name,
);

$this->menu=array(
	//array('label'=>'List EmployeeSmsEmailDetails', 'url'=>array('index')),
	//array('label'=>'Create EmployeeSmsEmailDetails', 'url'=>array('create')),
	//array('label'=>'Update EmployeeSmsEmailDetails', 'url'=>array('update', 'id'=>$model->employee_sms_email_id)),
	//array('label'=>'Delete EmployeeSmsEmailDetails', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->employee_sms_email_id),'confirm'=>'Are you sure you want to delete this item?')),
	//array('label'=>'Manage EmployeeSmsEmailDetails', 'url'=>array('admin')),


	array('label'=>'', 'url'=>array('index'),'linkOptions'=>array('class'=>'List','title'=>'List')),
	array('label'=>'', 'url'=>array('create'),'linkOptions'=>array('class'=>'Create','title'=>'Create')),
	array('label'=>'', 'url'=>array('update', 'id'=>$model->employee_sms_email_id),'linkOptions'=>array('class'=>'Edit','title'=>'Update')),
	array('label'=>'', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->employee_sms_email_id),'confirm'=>'Are you sure you want to delete this item?', 'class'=>'Delete','title'=>'Delete')),
	array('label'=>'', 'url'=>array('admin'),'linkOptions'=>array('class'=>'Manage','title'=>'Manage')),
);
?>

<h1>View EmployeeSmsEmailDetails <?php //echo $model->employee_sms_email_id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		//'employee_sms_email_id',
		array(
                'name'=>'Employee',
		'type'=>'raw',
                'value'=> $model->rel_emp_sms_info->employee_first_name,
          ),	
		array(
                'name'=>'Branch',
		'type'=>'raw',
                'value'=> $model->rel_emp_sms_bid->branch_name,
          ),
		array(
                'name'=>'Shift',
		'type'=>'raw',
                'value'=> $model->rel_emp_sms_shiftid->shift_type,
          ),
		 array(
		'name' => 'department_name',
	        'value' => $model->rel_emp_sms_divid->department_name,
                     ),
		
		//'employee_id',
		//'department_id',
		//'branch_id',
		//'shift_id',
		'message_email_text',
		'email_sms_status',
		//'created_by',
		array('name'=>'created_by',
			'value'=>User::model()->findByPk($model->created_by)->user_organization_email_id,
		),
		'creation_date',
		
	),
)); ?>
