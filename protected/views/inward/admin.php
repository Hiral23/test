<?php
$this->breadcrumbs=array(
	'Inwards'=>array('admin'),
	'Manage',
);

$this->menu=array(
//	array('label'=>'List Inward', 'url'=>array('index')),
	array('label'=>'', 'url'=>array('create'),'linkOptions'=>array('class'=>'Create','title'=>'Create')),
);

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$.fn.yiiGridView.update('inward-grid', {
		data: $(this).serialize()
	});
	return false;
});
");
?>

<h1>Manage Inwards</h1>



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
	'id'=>'inward-grid',
	'dataProvider'=>$dataProvider,
	'filter'=>$model,
	'columns'=>array(
		array(
		'header'=>'SN.',
		'class'=>'IndexColumn',
		),
		//'id',
		'invoice_description',
		'company_name',
		'invoice_no_dc',
		array(
                'name'=>'department_name',
//                'type'=>'raw',		
                'value'=> '$data->rel_department->department_name',
	          ),
		
		array(
                'name'=>'invoice_date',
                'type'=>'raw',		
                'value'=> 'date_format(date_create($data->invoice_date), "d-m-Y")',
	          ),
		'receiver_name',
		array(
                'name'=>'received_date',
                'type'=>'raw',		
                'value'=> 'date_format(date_create($data->received_date), "d-m-Y")',
	          ),
		
	
		array(
		'type'=>'raw',
                'value'=>  'CHtml::image("../inward_image/" . $data->photo, "No Image",array("width"=>"20px","height"=>"20px"))',
                 ),
		/*
		'sender_name',
		'department',
		'photo',
		'document',
		'org_name_id',
		'no_of_packets',*/
		
		

		array(
			'class'=>'CButtonColumn',
			'template' => '{view} {update} {delete} {Add Detail}',
	                'buttons'=>array(
                        'Add Detail' => array(
                                'label'=>'Add Detail', // text label of the button
				'url'=>'Yii::app()->createUrl("inwardDetails/create", array("id"=>$data->id))',
                                'imageUrl'=> Yii::app()->baseUrl.'/images/add.jpeg',  // image URL of the button. If not set or false, a text link is used

                        ),
                        'view' => array(
				'url'=>'Yii::app()->createUrl("inward/new_view", array("id"=>$data->id))',
                        ),

                ),

	
		),
	),
	'pager'=>array(
		'class'=>'AjaxList',
		'maxButtonCount'=>25,
		'header'=>''
	    ),
)); ?>

