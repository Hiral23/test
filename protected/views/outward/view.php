<?php
$this->breadcrumbs=array(
	'Outwards'=>array('admin'),
	$model->id,
);

$this->menu=array(
	//array('label'=>'List Outward', 'url'=>array('index')),
	array('label'=>'', 'url'=>array('create'),'linkOptions'=>array('class'=>'Create','title'=>'Create')),
	array('label'=>'', 'url'=>array('update', 'id'=>$model->id),'linkOptions'=>array('class'=>'Edit','title'=>'Update')),
	array('label'=>'', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?', 'class'=>'Delete','title'=>'Delete')),
	array('label'=>'', 'url'=>array('admin'),'linkOptions'=>array('class'=>'Manage','title'=>'Manage')),
	array('label'=>'', 'url'=>array('/outwardDetails/create','id'=>$model->id),'linkOptions'=>array('class'=>'Create','title'=>'Add OutwardDetails')),
);
?>

<h1>View Outward <?php //echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
//		'id',
		'invoice_description',
		'company_name',
		'invoice_no_dc',
		'invoice_date',
		'sending_date',
		'receiver_name',
		//'department',
		array(
			'name'=>'department',
			'value'=>$model->department0->department_name,
		),
		//'photo',
		array('label'=>'Photo',
		'type'=>'raw',
                'value'=>  CHtml::image('protected/outward_image/' . $model->photo, 'No Image',array('width'=>'125px','height'=>'175px')),
                 ),
		//'document',
		array(
                'name'=>'document',
                'type'=>'raw',
                'value'=>CHtml::link(CHtml::encode($model->document), Yii::app()->baseUrl .'/protected/outward_document/' .$model->document, $htmlOptions=array("target"=>"_parent")),
          ),

		'document_desc',
		//'org_name_id',
		array(
			'name'=>'org_name_id',
			'value'=>$model->orgName->organization_name,
		),
		'no_of_packets',
		'sender_name',
	),
)); ?>

<br>
<br>
<?php $out=new OutwardDetails;?>

<br><?php $this->widget('zii.widgets.grid.CGridView', array(
       'id'=>'outward-details-table-grid',
       'dataProvider'=>$outward_details->mysearch(),
//        'filter'=>$model,
       'columns'=>array(
               'id',
		//'outward_id',
		//'item_category_id',
		array(
			'name'=>'item_category_id',
			'value'=>'$data->itemCategory->cat_name',
		),
		//'name',
		array(
			'name'=>'name',
			'value'=>'$data->inwardDetailName->name',
		),
		'description',
		'quantity',
		//'rate',
		//'amount',
       ),
)); ?>

