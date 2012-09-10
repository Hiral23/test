<?php
$this->breadcrumbs=array(
	'Admin'=>array('admin'),
	'Manage',
);

$this->menu=array(
//	array('label'=>'List User', 'url'=>array('index')),
	array('label'=>'', 'url'=>array('create'),'linkOptions'=>array('class'=>'Create','title'=>'Create')),
);

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$.fn.yiiGridView.update('user-grid', {
		data: $(this).serialize()
	});
	return false;
});
");
?>

<h1>Manage Admin</h1>

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

<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'user-grid',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
		//'user_id',
		array(
		'header'=>'SN.',
		'class'=>'IndexColumn',
		),
		'user_organization_email_id',
		//'user_password',
		//'user_organization_id',
		//'user_created_by',
		/*
		'user_creation_date',


		array(
			'name'=>'user_organization_id',
                	'value'=>'Organization::item($data->user_organization_id)',
                 	'filter'=>  Organization::items(),
            ),
		array(
			'name'=>'user_role_master_id',
                	'value'=>'RoleMaster::item($data->user_role_master_id)',
                 	'filter'=> RoleMaster::items(),
		), */
		array(
			'class'=>'CButtonColumn',
			'template' => '{view} {delete}',
		),
	),
)); ?>
