<?php
$this->breadcrumbs=array(
	'Time Tables'=>array('admin'),
	'Manage',
);

$this->menu=array(
	
	array('label'=>'', 'url'=>array('create'),'linkOptions'=>array('class'=>'Create','title'=>'Create timetable')),
	//array('label'=>'', 'url'=>array('MasterTableReport'),'linkOptions'=>array('class'=>'faculty_master','title'=>'Show Faculty Master Timetable Report')),
	//array('label'=>'', 'url'=>array('RoomMasterReport'),'linkOptions'=>array('class'=>'room_master','title'=>'Show Room Master Report')),
);

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$.fn.yiiGridView.update('time-table-grid', {
		data: $(this).serialize()
	});
	return false;
});
");
?>

<h1>Manage Time Tables</h1>
<!--
<p>
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
	'id'=>'time-table-grid',
	'dataProvider'=>$dataProvider,
	'filter'=>$model,
	'columns'=>array(
		//'timetable_id',
		'timetable_name',
		'clg_start_time',
		//'timetable_branch_id',
		//'timetable_acdm_term_period_id',
		//'timetable_acdm_term_name_id',
		
		/*array('name' => 'branch_name',
	              'value' => '$data->Rel_Branch->branch_name',
                     ),*/
		
		array(
		        'name'=>'academic_term_period',
		        'value'=>'$data->Rel_AcademicTermPeriod->academic_term_period', 	
          	),
		/*
		array(
		        'name'=>'academic_term_name',
		        'value'=>'$data->Rel_AcademicTerm->academic_term_name',
          	),*/
		array(
			'class'=>'CButtonColumn',


			'template' => '{view}{delete}{update}&nbsp;{Room}&nbsp;{Faculty}&nbsp;{Branch}',

			

			'buttons'=>array(
				'view' => array(
				                'label'=>'View', // text label of the button
						'url'=>'Yii::app()->createUrl("timeTable/CreateFinaltable", array("id"=>$data->timetable_id))',
				        ),
				'update' => array(
				                'label'=>'Update', // text label of the button
						'url'=>'Yii::app()->createUrl("timeTable/update", array("id"=>$data->timetable_id))',
				        ),

				
				'Room' => array(
				                'label'=>'Room Master Report', // text label of the button
						  'url'=>'Yii::app()->createUrl("timeTable/RoomMasterReport", array("id"=>$data->timetable_id))',

			                'imageUrl'=> Yii::app()->baseUrl.'/images/room_timetable.png',  // image URL of the button. If not set or false, a text link is used

				               'options' => array('class'=>'fees'), // HTML options for the button
                       			 ),
				'Faculty' => array(
				                'label'=>'Faculty Master Report', // text label of the button
						  'url'=>'Yii::app()->createUrl("timeTable/MasterTableReport", array("id"=>$data->timetable_id))',

				                'imageUrl'=> Yii::app()->baseUrl.'/images/emp_timetable.png',  // image URL of the button. If not set or false, a text link is used

				               'options' => array('class'=>'fees'), // HTML options for the button
                       			 ),
				'Branch' => array(
				                'label'=>'Branchwise Report', // text label of the button
						  'url'=>'Yii::app()->createUrl("timeTable/BranchwiseReport", array("id"=>$data->timetable_id))',

				                'imageUrl'=> Yii::app()->baseUrl.'/images/branch_timetable.png',  // image URL of the button. If not set or false, a text link is used

				               'options' => array('class'=>'fees'), // HTML options for the button
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
