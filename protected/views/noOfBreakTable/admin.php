<?php
$this->breadcrumbs=array(
	'No Of Break Tables'=>array('index'),
	'Manage',
);

$this->menu=array(
	array('label'=>'List NoOfBreakTable', 'url'=>array('index')),
	array('label'=>'Create NoOfBreakTable', 'url'=>array('create')),
);

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$.fn.yiiGridView.update('no-of-break-table-grid', {
		data: $(this).serialize()
	});
	return false;
});
");
?>

<h1>Manage No Of Break Tables</h1>

<p>
You may optionally enter a comparison operator (<b>&lt;</b>, <b>&lt;=</b>, <b>&gt;</b>, <b>&gt;=</b>, <b>&lt;&gt;</b>
or <b>=</b>) at the beginning of each of your search values to specify how the comparison should be done.
</p>

<?php echo CHtml::link('Advanced Search','#',array('class'=>'search-button')); ?>
<div class="search-form" style="display:none">
<?php $this->renderPartial('_search',array(
	'model'=>$model,
)); ?>
</div><!-- search-form -->

<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'no-of-break-table-grid',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
		'id',
		'timetable_id',
		'day',
		'after_lec_break',
		'branch_id',
		'div_id',
		/*
		'acdm_period_id',
		'acdm_name_id',
		*/
		array(
			'class'=>'CButtonColumn',
		),
	),
)); ?>
