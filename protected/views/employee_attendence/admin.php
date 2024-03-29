<?php
$this->breadcrumbs=array(
	'Employee Attendences'=>array('admin'),
	'Manage',
);

$this->menu=array(
//	array('label'=>'List Employee_attendence', 'url'=>array('index')),
	array('label'=>'', 'url'=>array('create'),'linkOptions'=>array('class'=>'Create','title'=>'Create')),
);

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$.fn.yiiGridView.update('employee-attendence-grid', {
		data: $(this).serialize()
	});
	return false;
});
");
?>

<h1>Manage Employee Attendences</h1>

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
	'id'=>'employee-attendence-grid',
	'dataProvider'=>$dataProvider,
	'filter'=>$model,
	'columns'=>array(
		array(
		'header'=>'SN.',
		'class'=>'IndexColumn',
		),
//		'employee_id',
		
		array(
		'name'=>'employee_attendance_card_id',
//                'type'=>'raw',		
                'value'=> '$data->Rel_Emp_Info->employee_attendance_card_id',
	          ),
				
		array(
		'name'=>'employee_first_name',
//                'type'=>'raw',		
                'value'=> '$data->Rel_Emp_Info->employee_first_name',
	          ),
		
//		'emploteyee_attendence_id',
		
		'date',
		'total_hour',
		'time1',
		'time2',
//		'time3',
		/*
		'time4',
		'time5',
		'time6',
		'time7',
		'time8',
		'time9',
		'time10',
*/
		'overtime_hour',
		
		
	),
		'pager'=>array(
		'class'=>'AjaxList',
		'maxButtonCount'=>25,
		'header'=>''
	    ),
)); ?>
