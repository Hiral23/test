<?php
$this->breadcrumbs=array(
	'Teaching Aids'=>array('index'),
	'Manage',
);

$this->menu=array(
	//array('label'=>'List Teaching_aids', 'url'=>array('index')),
	array('label'=>'', 'url'=>array('create'),'linkOptions'=>array('class'=>'Create','title'=>'Create')),
);

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$.fn.yiiGridView.update('teaching-aids-grid', {
		data: $(this).serialize()
	});
	return false;
});
");
?>

<h1>Manage Teaching Aids</h1>



<?php echo CHtml::link('Advanced Search','#',array('class'=>'search-button')); ?>
<div class="search-form" style="display:none">
<?php $this->renderPartial('_search',array(
	'model'=>$model,
)); ?>
</div><!-- search-form -->

<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'teaching-aids-grid',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
		array(
		'header'=>'SN.',
		'class'=>'IndexColumn',
		),
		//'teaching_aidss_id',
		'teaching_aids_name',
		
		'teaching_aids_alias',
		'remarks',
				 
		array(
			'class'=>'CButtonColumn',
	
		),
	),
)); ?>
