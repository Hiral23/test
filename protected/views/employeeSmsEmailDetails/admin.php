<?php
$this->breadcrumbs=array(
	'Employee Sms Email Details'=>array('admin'),
	'Manage',
);

$this->menu=array(
	//array('label'=>'List EmployeeSmsEmailDetails', 'url'=>array('index')),
	//array('label'=>'Create EmployeeSmsEmailDetails', 'url'=>array('create')),

	array('label'=>'', 'url'=>array('my_create'),'linkOptions'=>array('class'=>'Create','title'=>'Create')),
	//array('label'=>'', 'url'=>array('index'),'linkOptions'=>array('class'=>'List','title'=>'List')),
);

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$.fn.yiiGridView.update('employee-sms-email-details-grid', {
		data: $(this).serialize()
	});
	return false;
});
");
?>

<h1>Manage Employee Sms Email Details</h1>



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
	'id'=>'employee-sms-email-details-grid',
	'dataProvider'=>$dataProvider,
	'filter'=>$model,
	'columns'=>array(
		array(
		'header'=>'SN.',
		'class'=>'IndexColumn',
		),
		//'employee_sms_email_id',
		 array(
		 'name' => 'employee_first_name',
	         'value' => '$data->rel_emp_sms_info->employee_first_name',
                     ),
		 array(
		'name' => 'branch_name',
	        'value' => '$data->rel_emp_sms_bid->branch_name',
                     ),
		 array(
		'name' => 'shift_type',
	        'value' => '$data->rel_emp_sms_shiftid->shift_type',
                     ),
		 array(
		'name' => 'department_name',
	        'value' => '$data->rel_emp_sms_divid->department_name',
                     ),
		
		//'department_id',
		//'branch_id',
		//'shift_id',
		'message_email_text',
		'email_sms_status',
		/*
		'created_by',
		'creation_date',
		'employee_id',
		*/
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
