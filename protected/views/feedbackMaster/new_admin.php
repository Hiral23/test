<?php
$this->breadcrumbs=array(
	'Feedback Masters'=>array('admin'),
	'Manage',
);

$this->menu=array(
//	array('label'=>'', 'url'=>array('index')),
	array('label'=>'', 'url'=>array('create'),'linkOptions'=>array('class'=>'Create','title'=>'Create')),
);

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$.fn.yiiGridView.update('feedback-master-grid', {
		data: $(this).serialize()
	});
	return false;
});http://localhost/yii/everyone/diploma-new/feedbackDetails/new_admin/2
");
?>

<h1>Manage Feedback Masters</h1>

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
$dataProvider = $model->my_search();
$pageSize = Yii::app()->user->getState("pageSize",@$_GET["pageSize"]);
$dataProvider->getPagination()->setPageSize($pageSize);
?>

</div><!-- search-form -->

<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'feedback-master-grid',
	'dataProvider'=>$dataProvider,
	//'filter'=>$model,
	'columns'=>array(
		array(
		'header'=>'SN.',
		'class'=>'IndexColumn',
		),
		//'id',
		'feedback_start_date',
		'feedback_end_date',
		'feedback_name',
//		'feedback_emp_id',
		array(
                'name'=>'employee_first_name',
                'value'=> '$data->Rel_emp_id->employee_first_name ',
          ),	
//		'feedback_branch_id',
		array(
                'name'=>'branch_name',
                'value'=> '$data->Rel_branch_id->branch_name' ,
          ),			

//		'feedback_academic_term_id',
		array(
                'name'=>'feedback_academic_term_id',
                'value'=>' $data->Rel_academic_term_id->academic_term_name' ,
          ),
	array(
                'name'=>'feedback_academic_term_period_id',
                'value'=>' $data->Rel_academic_term_period_id->academic_term_period',
          ),				

		/*
		'feedback_subject_id',
		'feedback_department_id',
		'remark',
		*/
		array(
                       'class'=>'CButtonColumn',
                       'template' => '{Give Feedback}',
                       'buttons'=>array(
                       'Give Feedback' => array(
                               'label'=>'Give Feedback', // text label of the button
//                                'url'=>"CHtml::normalizeUrl(array('feesMasterTransaction/create','id'=>model->fees_master_id))",
                                 'url'=>'Yii::app()->createUrl("feedbackDetails/mycreate", array("id"=>$data->id))',
                               'imageUrl'=> Yii::app()->baseUrl.'/images/add.jpeg',  // image URL of the button. If not set or false, a text link is used
//                               'options' => array('class'=>'copy'), // HTML options for the button
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
