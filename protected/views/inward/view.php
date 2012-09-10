<?php
$this->breadcrumbs=array(
	'Inwards'=>array('admin'),
	$model->id,
);

$this->menu=array(
//	array('label'=>'List Inward', 'url'=>array('index')),
	array('label'=>'', 'url'=>array('create'),'linkOptions'=>array('class'=>'Create','title'=>'Create')),
	array('label'=>'', 'url'=>array('update', 'id'=>$model->id),'linkOptions'=>array('class'=>'Edit','title'=>'Update')),
	array('label'=>'', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?', 'class'=>'Delete','title'=>'Delete')),
	array('label'=>'', 'url'=>array('admin'),'linkOptions'=>array('class'=>'Manage','title'=>'Manage')),
);
?>

<h1>View Inward <?php //echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		//'id',
		'invoice_description',
		'company_name',
		'invoice_no_dc',
		'invoice_date',
		'received_date',
		'sender_name',
		array(
			'name'=>'department',
			'value'=>$model->rel_department->department_name,
		),
		/* array('label'=>'Photo',
		             'type'=>'raw',
		             'value'=>CHtml::image(Yii::app()->baseUrl .'/protected/inward_image/' . $model->photo)),*/
		//'document',
		array(
                'name'=>'document',
                'type'=>'raw',
                'value'=>CHtml::link(CHtml::encode($model->document), Yii::app()->baseUrl .'/protected/inward_document/' .$model->document, $htmlOptions=array("target"=>"_parent")),
          ),

		'document_desc',
		array(
			'name'=>'org_name_id',
			'value'=>$model->rel_organization->organization_name,
		),
		array('label'=>'Photo',
		'type'=>'raw',
                'value'=>  CHtml::image('protected/inward_image/' . $model->photo, 'No Image',array('width'=>'125px','height'=>'175px')),
                 ),

		'no_of_packets',
		'receiver_name',
	),
)); ?>

<br>
<br>
<br><?php $this->widget('zii.widgets.grid.CGridView', array(
       'id'=>'inward-details-table-grid',
       'dataProvider'=>$inward_details->mysearch(),
//        'filter'=>$model,
       'columns'=>array(
               'id',
		'inward_id',
		'name',
		'description',
		'quantity',
		/*array(
			'name'=>'item_category_id',
			'value'=>$model->itemCategory->cat_name,
		),*/
		'rate',
		'amount',
       ),
)); ?>





