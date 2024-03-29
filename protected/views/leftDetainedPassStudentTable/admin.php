<?php
$this->breadcrumbs=array(
	'Left Detained Pass Student '=>array('admin'),
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
	$.fn.yiiGridView.update('left-detained-pass-student-table-grid', {
		data: $(this).serialize()
	});
	return false;
});
");
?>

<h1>Manage Left Detained Pass Student </h1>
<!--
<p>
You may optionally enter a comparison operator (<b>&lt;</b>, <b>&lt;=</b>, <b>&gt;</b>, <b>&gt;=</b>, <b>&lt;&gt;</b>
or <b>=</b>) at the beginning of each of your search values to specify how the comparison should be done.
</p>
-->
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
	'id'=>'left-detained-pass-student-table-grid',
	'dataProvider'=>$dataProvider,
	'filter'=>$model,
	'columns'=>array(
		
		//'id',
		//'student_id',
		//'status_id',
		//'sem',
		//'academic_term_period_id',
		/*
		'created_by',
		'oraganization_id',
		*/
		array(
                'name'=>'student_id',
                'value'=> 'StudentInfo::model()->findByPk(StudentTransaction::model()->findByPk($data->student_id)->student_transaction_student_id)->student_first_name',
		'filter'=>false,
          	),
		array(
                'name'=>'status_name',
                'value'=> '$data->Rel_left_status_id->status_name ',
          	),
		array(
                'name'=>'academic_term_name',
                'value'=> '$data->Rel_left_sem_id->academic_term_name',
          	),
		array(
                'name'=>'academic_term_period',
                'value'=> '$data->Rel_left_academic_term_period_id->academic_term_period',
          	),
		//'creation_date',	
		array(
			'class'=>'CButtonColumn',
			'template' => '{view}{delete}',
			
		),
	),
	'pager'=>array(
		'class'=>'AjaxList',
		'maxButtonCount'=>25,
		'header'=>''
	    ),
)); ?>
