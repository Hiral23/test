<?php
$this->breadcrumbs=array(
	'Reset Employee Password',
	
);?>
<?php
/*
$this->breadcrumbs=array(
	'Employee Transactions'=>array('admin'),
	'Manage',
);*/

$this->menu=array(
//	array('label'=>'List EmployeeTransaction', 'url'=>array('index')),
	//array('label'=>'', 'url'=>array('create'),'linkOptions'=>array('class'=>'Create','title'=>'Create')),
);

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$.fn.yiiGridView.update('employee-transaction-grid', {
		data: $(this).serialize()
	});
	return false;
});
");
?>

<h1>Reset Employee Password</h1>


<?php //echo CHtml::link('Advanced Search','#',array('class'=>'search-button')); ?>
<?php
$dataProvider = $model->search();
$pageSize = Yii::app()->user->getState("pageSize",@$_GET["pageSize"]);
$dataProvider->getPagination()->setPageSize($pageSize);
?>
<div class="block-error">
		<?php echo Yii::app()->user->getFlash('resetemppassword'); ?>
	</div>
<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'employee-transaction-grid',
	'dataProvider'=>$dataProvider,
	'filter'=>$model,
	'columns'=>array(
		array(
		'header'=>'SN.',
		'class'=>'IndexColumn',
		),
//		'employee_transaction_id',
//		'employee_transaction_user_id',
//		'employee_transaction_employee_id',
//		'employee_transaction_emp_address_id',
//		'employee_transaction_branch_id',
//		'employee_transaction_category_id',
		 array('name' => 'employee_first_name',
		     // 'filter' => CHtml::listData(TaskMaster::model()->findAll(), 'task_name', 'task_name'),  // Note: Put this line if you need dropdown in Grid 				for display list of entry from master table
	              'value' => '$data->Rel_Emp_Info->employee_first_name',
                     ),

		 array('name' => 'category_name',
		     // 'filter' => CHtml::listData(TaskMaster::model()->findAll(), 'task_name', 'task_name'),  // Note: Put this line if you need dropdown in Grid 				for display list of entry from master table
	              'value' => '$data->Rel_Category->category_name',
                     ),

		 array('name' => 'branch_name',
		     // 'filter' => CHtml::listData(TaskMaster::model()->findAll(), 'task_name', 'task_name'),  // Note: Put this line if you need dropdown in Grid 				for display list of entry from master table
	              'value' => '$data->Rel_Branch->branch_name',
                     ),

		 array('name' => 'department_name',
		     // 'filter' => CHtml::listData(TaskMaster::model()->findAll(), 'task_name', 'task_name'),  // Note: Put this line if you need dropdown in Grid 				for display list of entry from master table
	              'value' => '$data->Rel_Department->department_name',
                     ),
		array('name' => 'shift_type',
		      'value' => '$data->Rel_Shift->shift_type',
                ),
		/*
		 array('name' => 'employee_type',
			'value' =>'$data->Rel_Emp_Info->employee_type == 0 ? "Non-Teaching" : ($data->Rel_Emp_Info->employee_type == 1 ? "Teaching" : "Technical")',
                 ),*/
/*
		array(
		'type'=>'raw',
                'value'=>  'CHtml::image("../emp_images/" . $data->Rel_Photo->employee_photos_path, "No Image",array("width"=>"20px","height"=>"20px"))',
                 ),

		array(//'label'=>'Photo',
		             'type'=>'raw',
		             'value'=>'CHtml::image(Yii::app()->baseUrl ."/protected/emp_images/" . $data->Rel_Photo->employee_photos_path)'),
		/*
		'employee_transaction_quota_id',
		'employee_transaction_religion_id',
		'employee_transaction_shift_id',
		'employee_transaction_designation_id',
		'employee_transaction_nationality_id',
		'employee_transaction_department_id',
		'employee_transaction_organization_id',
		'employee_transaction_languages_known_id',
		'employee_transaction_emp_photos_id',
		*/
		array('class'=>'CButtonColumn',
			'template' => '{Reset Password}',
	                'buttons'=>array(
                        'Reset Password' => array(
                                'label'=>'Reset Password', 
				 'url'=>'Yii::app()->createUrl("user/update_emp_password", array("id"=>$data->employee_transaction_user_id))',
                                'imageUrl'=> Yii::app()->baseUrl.'/images/Reset Password.png',  // image URL of the button. If not set or false, a text link is used
                              // 'options' => array('class'=>'fees'), // HTML options for the button
				'options'=>array('id'=>'update-student-status'),
                        ),
		   ),

		),
	),
	'pager'=>array(
		'class'=>'AjaxList',
		'maxButtonCount'=>25,
		'header'=>''
	    ),
)); ?>
