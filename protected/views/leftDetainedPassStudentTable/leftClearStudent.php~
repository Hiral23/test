<?php
$this->breadcrumbs=array(
	'Left Detained Pass Student'=>array('admin'),
	'Manage',
);

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

<h1>Left/Detain/Clear Student </h1>

<?php //echo CHtml::link('Advanced Search','#',array('class'=>'search-button')); ?>
<?php
$dataProvider = $model->search();
$pageSize = Yii::app()->user->getState("pageSize",@$_GET["pageSize"]);
$dataProvider->getPagination()->setPageSize($pageSize);
?>

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
			'template' => '{Add Fees}',
	                'buttons'=>array(
                        'Add Fees' => array(
                                'label'=>'Left Student', 
				  'url'=>'Yii::app()->createUrl("LeftDetainedPassStudentTable/update_status", array("id"=>$data->student_transaction_id))',
                                'imageUrl'=> Yii::app()->baseUrl.'/images/add.jpeg',  // image URL of the button. If not set or false, a text link is used
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


<?php
$config = array( 
    'scrolling' => 'no',
    'autoDimensions' => false,
    'width' => '715',
    'height' => '205', 
 //   'titleShow' => false,
    'overlayColor' => '#000',
    'padding' => '0',
    'showCloseButton' => true,
    'onClose' => function() {
                return window.location.reload();
            },

// change this as you need
);


$this->widget('application.extensions.fancybox.EFancyBox', array('target'=>'a#update-student-status', 'config'=>$config));

?>
