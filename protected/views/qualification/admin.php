<?php
$this->breadcrumbs=array(
	'Qualifications'=>array('admin'),
	'Manage',
);

$this->menu=array(
//	array('label'=>'List Qualification', 'url'=>array('index')),
	//array('label'=>'Create Qualification', 'url'=>array('create')),
	array('label'=>'', 'url'=>array('create'),'linkOptions'=>array('class'=>'Create','title'=>'Create')),
);

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$.fn.yiiGridView.update('qualification-grid', {
		data: $(this).serialize()
	});
	return false;
});
");
?>

<h1>Manage Qualifications</h1>

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
	'id'=>'qualification-grid',
	'dataProvider'=>$dataProvider,
	'filter'=>$model,
	'columns'=>array(
		array(
		'header'=>'SN.',
		'class'=>'IndexColumn',
		),
		//'qualification_id',
		'qualification_name',
		//'qualification_organization_id',
		//'qualification_created_by',
		//'qualification_created_date',
		/*
		array('name'=>'Organization',
			'value'=>'Organization::model()->findByPk($data->qualification_organization_id)->organization_name',
			'filter' => false,
		),
		
		array(
			'name'=>'qualification_organization_id',
                	'value'=>'Organization::item($data->qualification_organization_id)',
                 	'filter'=>  Organization::items(),
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
