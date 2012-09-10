<?php
$this->breadcrumbs=array(
	'Subject Types'=>array('admin'),
	'Manage',
);

$this->menu=array(
//	array('label'=>'List SubjectType', 'url'=>array('index')),
	array('label'=>'', 'url'=>array('create'),'linkOptions'=>array('class'=>'Create','title'=>'Create')),
);

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$.fn.yiiGridView.update('subject-type-grid', {
		data: $(this).serialize()
	});
	return false;
});
");
?>

<h1>Manage Subject Types</h1>

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
	'id'=>'subject-type-grid',
	'dataProvider'=>$dataProvider,
	'filter'=>$model,
	'columns'=>array(
		array(
		'header'=>'SN.',
		'class'=>'IndexColumn',
		),
	//	'subject_type_id',
		'subject_type_name',
		//'subject_organization_id',
		
		array(
			'name'=>'subject_active',
			'value'=>'($data->subject_active == 1) ?  "Active" : "Inactive"',
		),
		/*
		array('name' => 'subject_organization_id',
		      'value' => '$data->Rel_org_id->organization_name',
		      'filter'=>false,
                     ),*/
		
	//	'subject_modified_date',
	//	'subject_modified_user',
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