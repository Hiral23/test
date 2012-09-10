<?php
$this->breadcrumbs=array(
	'Branches'=>array('admin'),
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
	$.fn.yiiGridView.update('branch-grid', {
		data: $(this).serialize()
	});
	return false;
});
");
?>

<h1>Manage Branches</h1>

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
	'id'=>'branch-grid',
	'dataProvider'=>$dataProvider,
	'filter'=>$model,
	'columns'=>array(
		array(
		'header'=>'SN.',
		'class'=>'IndexColumn',
		),
		//'branch_id',
		'branch_name',
		'branch_alias',
		'branch_code',
		array(
                'name'=>'branch_tag_name',
//                'type'=>'raw',		
		'value'=> '(isset($data->branch_tag_id) ? $data->Rel_Branch_Tag->branch_tag_name  : "Not Set")',
	          ),
		//'branch_created_by',
		//'branch_creation_date',
		array('name'=>'Organization',
			'value'=>'Organization::model()->findByPk($data->branch_organization_id)->organization_name',
			'filter' => false,
		), 
		/*
		array('name'=>'branch_creation_date',
		'type'=>'raw',
			'value'=>'$data->branch_creation_date',	
		),*/ 

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
