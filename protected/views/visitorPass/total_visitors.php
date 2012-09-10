<?php
$this->breadcrumbs=array(
	'Visitor Passes'=>array('admin'),
	'Manage',
);

$this->menu=array(
//	array('label'=>'List VisitorPass', 'url'=>array('index')),
	array('label'=>'', 'url'=>array('create'),'linkOptions'=>array('class'=>'Create','title'=>'Create')),
);

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$.fn.yiiGridView.update('visitor-pass-grid', {
		data: $(this).serialize()
	});
	return false;
});
");
?>

<h1>Manage Visitor Passes</h1>

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
$dataProvider = $model->total_visitor();
$pageSize = Yii::app()->user->getState("pageSize",@$_GET["pageSize"]);
$dataProvider->getPagination()->setPageSize($pageSize);
?>
<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'visitor-pass-grid',
	'dataProvider'=>$dataProvider,
	'filter'=>$model,
	'columns'=>array(
		array(
		'header'=>'SN.',
		'class'=>'IndexColumn',
		),
		'pass_no',
		'visitor_name',

		/*array(

                'name'=>'visitor_name',
                'type'=>'raw',
//                'value'=>  'CHtml::link(CHtml::encode($data->visitor_name), "index.php?r=visitorPass/view&id=$data->pass_no", $htmlOptions=array("target"=>"_parent"))',

                'value'=>  'CHtml::link(CHtml::encode($data->visitor_name),"../visitorPass/new_view/$data->pass_no",$htmlOptions=array("target"=>"_parent"))',


          ),*/
		
		'contact_person',
		'purpose',
		//'department',
		//'photo',
			

		/*/
		'address',
		'company_represented',
		'vehicle_no',
		'no_of_persons',
		'remark',
		
		'age',
		'gender',*/
		array(
                'name'=>'in_date_time',
                'type'=>'raw',		
                'value'=> 'date_format(date_create($data->in_date_time), "d-m-Y H:i:s")',
	        ),
		array(
                'name'=>'Actual_Out_Time',
                'type'=>'raw',		
                'value'=> '(isset($data->Actual_Out_Time) ?  date_format(date_create($data->Actual_Out_Time), "d-m-Y H:i:s") : "")',

        	),

		array(
		'type'=>'raw',
                'value'=>  'CHtml::image("../visitors_photo/$data->photo", "No Image",array("width"=>"20px","height"=>"20px"))',
                 ),

		
		/*
		'out_time',
		'batch_no',
		'item_carring',

		
		/*array(
			//'class'=>'CButtonColumn',
			//'template' => '{view}',

		
		
		),*/
	),
	'pager'=>array(
		'class'=>'AjaxList',
		'maxButtonCount'=>25,
		'header'=>''
	    ),
)); ?>
