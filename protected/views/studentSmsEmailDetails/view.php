<?php
$this->breadcrumbs=array(
	'Student Sms Email Details'=>array('admin'),
	$model->rel_stud_sms_info->student_first_name,
);

$this->menu=array(
	//array('label'=>'List StudentSmsEmailDetails', 'url'=>array('index')),
	//array('label'=>'Create StudentSmsEmailDetails', 'url'=>array('create')),
	//array('label'=>'Update StudentSmsEmailDetails', 'url'=>array('update', 'id'=>$model->student_sms_email_id)),
	//array('label'=>'Delete StudentSmsEmailDetails', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->student_sms_email_id),'confirm'=>'Are you sure you want to delete this item?')),
	//array('label'=>'Manage StudentSmsEmailDetails', 'url'=>array('admin')),

	array('label'=>'', 'url'=>array('index'),'linkOptions'=>array('class'=>'List','title'=>'List')),
	array('label'=>'', 'url'=>array('create'),'linkOptions'=>array('class'=>'Create','title'=>'Create')),
	array('label'=>'', 'url'=>array('update', 'id'=>$model->student_sms_email_id),'linkOptions'=>array('class'=>'Edit','title'=>'Update')),
	array('label'=>'', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->student_sms_email_id),'confirm'=>'Are you sure you want to delete this item?', 'class'=>'Delete','title'=>'Delete')),
	array('label'=>'', 'url'=>array('admin'),'linkOptions'=>array('class'=>'Manage','title'=>'Manage')),
);
?>

<h1>View StudentSmsEmailDetails <?php //echo $model->student_sms_email_id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		/*
		'student_sms_email_id',
		'branch_id',
		'academic_period_id',
		'academic_name_id',
		'division_id',
		'student_id',
		'message_email_text',
		'email_sms_status',
		'created_by',
		'shift_id',*/
		array(
                'name'=>'Student',
		'type'=>'raw',
                'value'=> $model->rel_stud_sms_info->student_first_name,
          ),	
		array(
                'name'=>'Division',
		'type'=>'raw',
                'value'=> $model->rel_stu_sms_divid->division_name,
          ),	
		array(
                'name'=>'Branch',
		'type'=>'raw',
                'value'=> $model->rel_stu_sms_bid->branch_name,
          ),
		array(
                'name'=>'Shift',
		'type'=>'raw',
                'value'=> $model->rel_stu_sms_shiftid->shift_type,
          ),
		array(
                'name'=>'Academic Period',
		'type'=>'raw',
                'value'=> $model->rel_stud_acd_pname->academic_terms_period_name,
          ),
		array(
                'name'=>'Academic Term',
		'type'=>'raw',
                'value'=> $model->rel_stud_acd_tname->academic_term_name,
          ),
		
		'message_email_text',
		'email_sms_status',
		array('name'=>'created_by',
			'value'=>User::model()->findByPk($model->created_by)->user_organization_email_id,
		),	
		'creation_date',
		
	),
)); ?>
