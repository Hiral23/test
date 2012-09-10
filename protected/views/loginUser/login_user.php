<?php
$this->breadcrumbs=array(
	'Login History',
);

$dataProvider = $model->search();
$pageSize = Yii::app()->user->getState("pageSize",@$_GET["pageSize"]);
$dataProvider->getPagination()->setPageSize($pageSize);
?>

<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'login-user-grid',
	'dataProvider'=>$dataProvider,

	//'filter'=>$model,
	'columns'=>array(
		array(
		'header'=>'SN.',
		'class'=>'IndexColumn',
		),
		//'user_id',
		array('name'=>'user_id',
			'value'=>'User::model()->findByPk($data->user_id)->user_organization_email_id',
		     ),
		//'status',
		'log_in_time',
		'user_ip_address',
		//'status',
		array(
		'type'=>'raw',
		//'value'=>  'CHtml::image("../diploma_new/images/ok1.png", "No Image")',
		'value'=>'($data->status == 1) ? CHtml::image("../images/ok1.png") : CHtml::image("../images/delete1.png")',
                 ),
		
	),
	'pager'=>array(
		'class'=>'AjaxList',
		'maxButtonCount'=>25,
		'header'=>'',
	    ),

)); ?>
