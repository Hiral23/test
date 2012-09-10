<?php
$this->breadcrumbs=array(
	'Academic Term'=>array('admin'),
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
	$.fn.yiiGridView.update('academic-term-grid', {
		data: $(this).serialize()
	});
	return false;
});
");
?>

<h1>Manage Academic Term</h1>

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
	'id'=>'academic-term-grid',
	'dataProvider'=>$dataProvider,
	'filter'=>$model,
	'columns'=>array(
		array(
		'header'=>'SN.',
		'class'=>'IndexColumn',
		),

//		'academic_term_id',
		'academic_term_name',
		//'academic_term_start_date',
		//'academic_term_end_date',
		array(
                'name'=>'academic_term_start_date',
                //'type'=>'raw',		
                'value'=>'($data->academic_term_start_date == 0000-00-00) ? "Not Set" : date_format(new DateTime($data->academic_term_start_date), "d-m-Y")',
	        ),

		array(
                'name'=>'academic_term_end_date',
                //'type'=>'raw',
		'value'=>'($data->academic_term_end_date == 0000-00-00) ? "Not Set" : date_format(new DateTime($data->academic_term_end_date), "d-m-Y")',
               	),
//		'academic_term_period_id',
		array('name'=>'academic_term_period',
			'value'=>'$data->academicTermPeriod->academic_term_period',
			//'filter' => false,

		), 
		 array(
                    'class'=>'JToggleColumn',
                    'name'=>'current_sem', // boolean model attribute (tinyint(1) with values 0 or 1)
                    'filter' => array('1' => 'Yes','0' => 'No'), // filter
		    'action'=>'', // other action, default is 'toggle' action
                    'htmlOptions'=>array('style'=>'text-align:center;min-width:60px;')
                ),
		array('name'=>'Organization',
			'value'=>'Organization::model()->findByPk($data->academic_term_organization_id)->organization_name',
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
