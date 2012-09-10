<?php
$this->breadcrumbs=array(
	'Student Sms Email Details'=>array('admin'),
	'Manage',
);

$this->menu=array(
	//array('label'=>'List StudentSmsEmailDetails', 'url'=>array('index')),
	//array('label'=>'Create StudentSmsEmailDetails', 'url'=>array('create')),

	array('label'=>'', 'url'=>array('my_create'),'linkOptions'=>array('class'=>'Create','title'=>'Create')),
	//array('label'=>'', 'url'=>array('index'),'linkOptions'=>array('class'=>'List','title'=>'List')),
);

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$.fn.yiiGridView.update('student-sms-email-details-grid', {
		data: $(this).serialize()
	});
	return false;
});
");
?>

<h1>Manage Student Sms Email Details</h1>


<?php //echo CHtml::link('Advanced Search','#',array('class'=>'search-button')); ?>
<div class="search-form" style="display:none">
<?php $this->renderPartial('_search',array(
	'model'=>$model,
)); ?>
<?php
$dataProvider = $model->search();
$pageSize = Yii::app()->user->getState("pageSize",@$_GET["pageSize"]);
$dataProvider->getPagination()->setPageSize($pageSize);
?>
</div><!-- search-form -->

<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'student-sms-email-details-grid',
	'dataProvider'=>$dataProvider,
	'filter'=>$model,
	'columns'=>array(
		array(
		'header'=>'SN.',
		'class'=>'IndexColumn',
		),
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
		'creation_date',
		'shift_id',
		*/
		 array(
		 'name' => 'student_first_name',
	         'value' => '$data->rel_stud_sms_info->student_first_name',
                     ),
		 array(
		'name' => 'branch_name',
	        'value' => '$data->rel_stu_sms_bid->branch_name',
                     ),
		 array(
		'name' => 'shift_type',
	        'value' => '$data->rel_stu_sms_shiftid->shift_type',
                     ),
		 array(
		'name' => 'division_name',
	        'value' => '$data->rel_stu_sms_divid->division_name',
                     ),
	/*	array(
		'name' => 'academic_terms_period_name',
	        'value' => '$data->rel_stud_acd_pname->academic_terms_period_name',
                     ),*/
		array(
		'name' => 'academic_term_name',
	        'value' => '$data->rel_stud_acd_tname->academic_term_name',
                     ),
		//'message_email_text',		
		'email_sms_status',
		//'created_by',
		//'creation_date',
		array(
			'class'=>'CButtonColumn',
			'template' => '{view}',
		),
	),
	'pager'=>array(
		'class'=>'AjaxList',
		'maxButtonCount'=>25,
		'header'=>''
	    ),
)); ?>
