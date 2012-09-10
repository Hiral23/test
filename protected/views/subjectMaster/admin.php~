<?php
$this->breadcrumbs=array(
	'Subject Masters'=>array('admin'),
	'Manage',
);

$this->menu=array(
//	array('label'=>'List SubjectMaster', 'url'=>array('index')),
	array('label'=>'', 'url'=>array('create'),'linkOptions'=>array('class'=>'Create','title'=>'Create')),
);

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$.fn.yiiGridView.update('subject-master-grid', {
		data: $(this).serialize()
	});
	return false;
});
");
?>

<h1>Manage Subjects</h1>

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
	'id'=>'subject-master-grid',
	'dataProvider'=>$dataProvider,
	'filter'=>$model,
	'columns'=>array(
		array(
		'header'=>'SN.',
		'class'=>'IndexColumn',
		),
	//	'subject_master_id',
		'subject_master_name',
		'subject_master_code',
		'subject_master_alias',
		
		//'subject_master_organization_id',
		array('name' => 'subject_master_organization_id',
		      'value' => '$data->Rel_org_id->organization_name',
                     ),
		array('name' => 'subject_type_name',
		      'value' => '$data->Rel_sub_type->subject_type_name',
                ),
		
		array('name' => 'branch_name',
		      'value' => '$data->Rel_branch_id->branch_name',
                ),
		array('name' => 'academic_term_name',
		      'value' => '$data->Rel_aca_term_name_id->academic_term_name',
                ),
		/*
		array('name' => 'academic_terms_period_name',
		      'value' => '$data->Rel_aca_term_name_id->academic_term_name',
                ),
		*/
		/*
		'subject_master_branch_id',
		'subject_master_academic_terms_period_id',
		'subject_master_active',
		'subject_master_updated_date',
		'subject_master_updated_user',
		*/
		array(
			'class'=>'CButtonColumn',
		),
	),
		'pager'=>array(
		'class'=>'AjaxList',
		'maxButtonCount'=>25,
		'header'=>''
	    ),
)); ?>
