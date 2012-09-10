<?php
$this->breadcrumbs=array(
	'Inward Details'=>array('index'),
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
	$.fn.yiiGridView.update('inward-details-grid', {
		data: $(this).serialize()
	});
	return false;
});
");
?>

<h1>Manage Inward Details</h1>



<?php echo CHtml::link('Advanced Search','#',array('class'=>'search-button')); ?>
<div class="search-form" style="display:none">
<?php $this->renderPartial('_search',array(
	'model'=>$model,
)); ?>
</div><!-- search-form -->

<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'inward-details-grid',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
		array('header'=>'SN.',
		  'value'=>'++$row',
	 	),
		//'id',
		'inward_id',
		'name',
		'description',
		'quantity',
		//'item_category_id',
		array('name' => 'cat_name',
		      'value' => '$data->itemCategory->cat_name',
                     ),
		/*
		'rate',
		'amount',
		*/
		array(
			'class'=>'CButtonColumn',
		),
	),
)); ?>
