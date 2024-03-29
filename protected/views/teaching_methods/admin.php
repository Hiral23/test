<?php
$this->breadcrumbs=array(
	'Teaching Methods'=>array('index'),
	'Manage',
);

$this->menu=array(
	//array('label'=>'List Teaching_methods', 'url'=>array('index')),
	array('label'=>'', 'url'=>array('create'),'linkOptions'=>array('class'=>'Create','title'=>'Create')),
);

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$.fn.yiiGridView.update('teaching-methods-grid', {
		data: $(this).serialize()
	});
	return false;
});
");
?>

<h1>Manage Teaching Methods</h1>



<?php echo CHtml::link('Advanced Search','#',array('class'=>'search-button')); ?>
<div class="search-form" style="display:none">
<?php $this->renderPartial('_search',array(
	'model'=>$model,
)); ?>
</div><!-- search-form -->

<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'teaching-methods-grid',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
		array(
		'header'=>'SN.',
		'class'=>'IndexColumn',
		),
		//'teaching_methods_id',
		'teaching_methods_name',
		'teaching_methods_alias',
		'remarks',
		//'teaching_methods_created_by',
		//'teaching_methods_created_date',
		array(
			'class'=>'CButtonColumn',
		),
	),
)); ?>
