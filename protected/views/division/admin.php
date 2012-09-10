<?php
$this->breadcrumbs=array(
	'Divisions'=>array('admin'),
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
	$.fn.yiiGridView.update('division-grid', {
		data: $(this).serialize()
	});
	return false;
});
");
?>

<h1>Manage Divisions</h1>

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
	'id'=>'division-grid',
	'dataProvider'=>$dataProvider,
	'filter'=>$model,
	'columns'=>array(
		//'division_id',
		array(
		'header'=>'SN.',
		'class'=>'IndexColumn',
		),

		'division_code',
		//'division_organization_id',
		//'division_created_by',
		//'division_creation_date',

		 
		array(
                'name'=>'branch_name',
//                'type'=>'raw',		
                'value'=> '$data->Rel_Branch->branch_name',
	          ),/*
		array('name'=>'division_creation_date',
			'value'=>'$data->division_creation_date',
			'filter' => false,

		),*/ 
		array('name'=>'Organization',
			'value'=>'Organization::model()->findByPk($data->division_organization_id)->organization_name',
			'filter' => false,

		),
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
