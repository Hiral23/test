<?php
$this->breadcrumbs=array(
	'City'=>array('admin'),
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
	$.fn.yiiGridView.update('city-grid', {
		data: $(this).serialize()
	});
	return false;
});
");
?>

<h1>Manage City</h1>

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
	'id'=>'city-grid',
	'dataProvider'=>$dataProvider,
	'filter'=>$model,
	'columns'=>array(
		array(
		'header'=>'SN.',
		'class'=>'IndexColumn',
		),
		//'city_id',
		'city_name',
		array(
            		'name'=>'country_id',
            		'value'=>'Country::item($data->country_id)',
            		'filter'=>  Country::items(),
        	),
		//'country_id',
            array(
		    'name'=>'state_id',
		    'value'=>'State::item($data->state_id)',
            	    'filter'=>  State::items(),
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
