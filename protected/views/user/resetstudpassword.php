<?php
$this->breadcrumbs=array(
	'Reset Student Password',
	
);?>
<?php
/*
$this->breadcrumbs=array(
	'Left Detained Pass Student Tables'=>array('admin'),
	'Manage',
);*/
$this->menu=array(
	//array('label'=>'List LeftDetainedPassStudentTable', 'url'=>array('index')),
	//array('label'=>'', 'url'=>array('create'),'linkOptions'=>array('class'=>'Create','title'=>'Create')),
);


Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$.fn.yiiGridView.update('student-transaction-grid', {
		data: $(this).serialize()
	});
	return false;
});
");
?>

<h1>Reset Student Password</h1>

<?php //echo CHtml::link('Advanced Search','#',array('class'=>'search-button')); ?>
<?php
$dataProvider = $model->search();
$pageSize = Yii::app()->user->getState("pageSize",@$_GET["pageSize"]);
$dataProvider->getPagination()->setPageSize($pageSize);
?>
<div class="block-error">
		<?php echo Yii::app()->user->getFlash('resetstudpassword'); ?>
	</div>
<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'student-transaction-grid',
	'dataProvider'=>$dataProvider,
	'filter'=>$model,
	'columns'=>array(

		array(
		'header'=>'SN.',
		'class'=>'IndexColumn',
		),

		 array('name' => 'student_enroll_no',
		       'value' => '$data->Rel_Stud_Info->student_enroll_no',
                     ),

		 array('name' => 'student_first_name',
		       'value' => '$data->Rel_Stud_Info->student_first_name',
                     ),

		array('name' => 'student_middle_name',
	              'value' => '$data->Rel_Stud_Info->student_middle_name',
                     ),

		array('name' => 'student_last_name',
	              'value' => '$data->Rel_Stud_Info->student_last_name',
                     ),
		 array('name' => 'branch_name',
	              'value' => '$data->Rel_Branch->branch_name',
                     ),
		array('name' => 'quota_name',
		      'value' => '$data->Rel_Quota->quota_name',
                ),
		array('name' => 'academic_term_period',
		      'value' => '$data->Rel_student_academic_terms_period_name->academic_term_period',
                ),
		array('name' => 'academic_term_name',
		      'value' => '$data->Rel_student_academic_terms_name->academic_term_name',
                ),
		array(
			'class'=>'CButtonColumn',
			'template' => '{Reset Password}',
	                'buttons'=>array(
                        'Reset Password' => array(
                                'label'=>'Reset Password', 
				  'url'=>'Yii::app()->createUrl("user/update_stud_password", array("id"=>$data->student_transaction_user_id))',
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



