<?php
$this->breadcrumbs=array(
	'Visitor Passes'=>array('admin'),
	$model->pass_no,
);

$this->menu=array(
//	array('label'=>'List VisitorPass', 'url'=>array('index')),
	array('label'=>'', 'url'=>array('create'),'linkOptions'=>array('class'=>'Create','title'=>'Create')),
	array('label'=>'', 'url'=>array('update', 'id'=>$model->pass_no),'linkOptions'=>array('class'=>'Edit','title'=>'Update')),
	array('label'=>'', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->pass_no),'confirm'=>'Are you sure you want to delete this item?', 'class'=>'Delete','title'=>'Delete')),
	array('label'=>'', 'url'=>array('admin'),'linkOptions'=>array('class'=>'Manage','title'=>'Manage')),
);
?>

<h1>View VisitorPass <?php //echo $model->pass_no; ?></h1>

<?php $this->widget('application.components.XDetailView', array(
	'data'=>$model,
	'ItemColumns' => 2,
	'attributes'=>array(
		'pass_no',
		'in_date_time',
		'visitor_name',
		'contact_person',
		'purpose',
		//'department',
		array(
                'name'=>'department',
		'type'=>'raw',
                'value'=> $model->Rel_vistor_dep->department_name,
          ),			
		'address',
		'company_represented',
		'vehicle_no',
		'no_of_persons',
		'remark',
//		'photo',
		 array('label'=>'Photo',
		             'type'=>'raw',
		             'value'=>CHtml::image(Yii::app()->baseUrl .'/protected/visitors_photo/' . $model->photo)),
		'age',
		'gender',
		'out_time',
		'batch_no',
		'item_carring',
	),
)); ?>


