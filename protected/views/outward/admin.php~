<?php
$this->breadcrumbs=array(
	'Outwards'=>array('admin'),
	'Manage',
);

$this->menu=array(
	//array('label'=>'List Outward', 'url'=>array('index')),
	array('label'=>'', 'url'=>array('create'),'linkOptions'=>array('class'=>'Create','title'=>'Create')),
);

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$.fn.yiiGridView.update('outward-grid', {
		data: $(this).serialize()
	});
	return false;
});
");
?>

<h1>Manage Outwards</h1>


<?php //echo CHtml::link('Advanced Search','#',array('class'=>'search-button')); ?>
<div class="search-form" style="display:none">
<?php $this->renderPartial('_search',array(
	'model'=>$model,
)); ?>
<?php
$dataProvider = $model->search();
$pageSize = Yii::app()->user->getState("pageSize",@$_GET["pageSize"]);
$dataProvider->getPagination()->setPageSize($pageSize);
?>

</div><!-- search-form -->

<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'outward-grid',
	'dataProvider'=>$dataProvider,
	'filter'=>$model,
	'columns'=>array(array(
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

		array(
                'name'=>'sending_date',
                'type'=>'raw',		
                'value'=> 'date_format(date_create($data->sending_date), "d-m-Y")',
	          ),


		array(
		'type'=>'raw',
                'value'=>  'CHtml::image("../outward_image/" . $data->photo, "No Image",array("width"=>"20px","height"=>"20px"))',
                 ),
		/*
		'receiver_name',
		'department',
		'photo',
		'document',
		'document_desc',
		'org_name_id',
		'no_of_packets',
		'sender_name',
		*/
		array(
			'class'=>'CButtonColumn',
			'template' => '{view} {update} {delete} {Add Detail}',
	                'buttons'=>array(
                        'Add Detail' => array(
                                'label'=>'Add Detail', // text label of the button
				'url'=>'Yii::app()->createUrl("outwardDetails/create", array("id"=>$data->id))',
                                'imageUrl'=> Yii::app()->baseUrl.'/images/add.jpeg',  // image URL of the button. If not set or false, a text link is used

                        ),
                        'view' => array(
				'url'=>'Yii::app()->createUrl("outward/new_view", array("id"=>$data->id))',
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
