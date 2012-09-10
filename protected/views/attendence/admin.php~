<?php
$this->breadcrumbs=array(
	'Attendences'=>array('admin'),
	'Manage',
);

$this->menu=array(
	array('label'=>'', 'url'=>array('index'),),
	array('label'=>'', 'url'=>array('create'),'linkOptions'=>array('class'=>'Create','title'=>'Create')),
);

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$.fn.yiiGridView.update('attendence-grid', {
		data: $(this).serialize()
	});
	return false;
});
");
?>

<h1>Manage Attendences</h1>

<!--<p>
You may optionally enter a comparison operator (<b>&lt;</b>, <b>&lt;=</b>, <b>&gt;</b>, <b>&gt;=</b>, <b>&lt;&gt;</b>
or <b>=</b>) at the beginning of each of your search values to specify how the comparison should be done.
</p>-->

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
	'id'=>'attendence-grid',
	'dataProvider'=>$dataProvider,
	'filter'=>$model,
	'columns'=>array(
		array(
		'header'=>'SN.',
		'class'=>'IndexColumn',
			),

		//'id',
		//'st_id',
		array(
		'name'=>'student_enroll_no',
//                'type'=>'raw',		
                'value'=> '$data->rel_atd_student->student_enroll_no',
	          ),

		array(
		'name'=>'student_first_name',
//                'type'=>'raw',		
                'value'=> '$data->rel_atd_student->student_first_name',
	          ),
		array(
		'name'=>'employee_first_name',
//                'type'=>'raw',		
                'value'=> '$data->rel_atd_employee->employee_first_name',
	          ),
		'attendence',
		array(
		'name'=>'academic_term_period',
//                'type'=>'raw',		
                'value'=> '$data->rel_atd_sem->academic_term_period',
	          ),
		array(
		'name'=>'branch_name',
//                'type'=>'raw',		
                'value'=> '$data->rel_atd_branch->branch_name',
	          ),
		array(
		'name'=>'subject_master_name',
//                'type'=>'raw',		
                'value'=> '$data->rel_atd_subject->subject_master_name',
	          ),
		array(
		'name'=>'academic_term_name',
//                'type'=>'raw',		
                'value'=> '$data->rel_atd_atn->academic_term_name',
	          ),

		//'shift_id',
		//'sem_id',
		//'branch_id',
		/*
		'div_id',
		'sub_id',
		'batch_id',
		'timetable_id',
		*/
		'attendence_date',
		array(
			'class'=>'CButtonColumn',
			'template' => '{update}',
			
		),
	),
		'pager'=>array(
		'class'=>'AjaxList',
		'maxButtonCount'=>25,
		'header'=>''
	    ),
)); ?>
