<?php
$this->breadcrumbs=array(
	'Employee'=>array('admin'),
	'Manage',
);

$this->menu=array(
//	array('label'=>'List EmployeeTransaction', 'url'=>array('index')),
	array('label'=>'', 'url'=>array('create'),'linkOptions'=>array('class'=>'Create','title'=>'Create')),
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

<h1>Manage Employee</h1>

<!--<p>
You may optionally enter a comparison operator (<b>&lt;</b>, <b>&lt;=</b>, <b>&gt;</b>, <b>&gt;=</b>, <b>&lt;&gt;</b>
or <b>=</b>) at the beginning of each of your search values to specify how the comparison should be done.
</p>-->

<?php //echo CHtml::link('Advanced Search','#',array('class'=>'search-button')); ?>
<div class="search-form" style="display:none">
<?php $this->renderPartial('_search',array(
	'model'=>$model,
)); ?>
</div><!-- search-form -->


<?php
$dataProvider = $model->search();
$pageSize = Yii::app()->user->getState("pageSize",@$_GET["pageSize"]);
$dataProvider->getPagination()->setPageSize($pageSize);
?>

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

		
		



		array(
		'type'=>'raw',
                'value'=>  'CHtml::image("../emp_images/" . $data->Rel_Photo->employee_photos_path, "No Image",array("width"=>"20px","height"=>"20px"))',
                 ),

		/*array(//'label'=>'Photo',
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
		array(
			'class'=>'CButtonColumn',
	                'buttons'=>array(
                        'view' => array(
				'url'=>'Yii::app()->createUrl("employeeTransaction/final_view", array("id"=>$data->employee_transaction_id))',
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
