<?php
$this->breadcrumbs=array(
	'Fees Masters'=>array('admin'),
	$model->fees_master_name,
);

$this->menu=array(
/*	array('label'=>'List FeesMaster', 'url'=>array('index')),*/
	array('label'=>'', 'url'=>array('create'),'linkOptions'=>array('class'=>'Create','title'=>'Create')),
	array('label'=>'', 'url'=>array('update', 'id'=>$model->fees_master_id),'linkOptions'=>array('class'=>'Edit','title'=>'Update')),
	array('label'=>'', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->fees_master_id),'confirm'=>'Are you sure you want to delete this item?','class'=>'Delete','title'=>'Delete')),
	array('label'=>'', 'url'=>array('admin'),'linkOptions'=>array('class'=>'Manage','title'=>'Manage')),
	array('label'=>'', 'url'=>array('feesMasterTransaction/create', 'id'=>$model->fees_master_id),'linkOptions'=>array('class'=>'Fees_detail','title'=>'Add Fees Details')),
);
?>

<h1>View Fees : <?php //echo $model->fees_master_id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
//		'fees_master_id',
		'fees_master_name',
//		'fees_master_created_by',
//		'fees_master_created_date',
//		'fees_master_tally_id',
		 array('name' => 'organization_name',
	              'value' => $model->Rel_fees_org->organization_name,
                     ),
		 array('name' => 'branch_name',
	              'value' => $model->Rel_fees_branch->branch_name,
                     ),

		array('name' => 'academic_term_period',
	              'value' => $model->Rel_fees_acmd->academic_term_period,
                     ),
		array('name' => 'academic_term_name',
	              'value' => $model->Rel_fees_acdm_term_name->academic_term_name,
                     ),
		 array('name' => 'quota_name',
	              'value' => $model->Rel_fees_quota->quota_name,
                     ),
		
		//'fees_organization_id',
		//'fees_branch_id',
		//'fees_academic_term_id',
		//'fees_quota_id',
	),
)); ?>

<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'fees-details-table-grid',
	'dataProvider'=>$fees_details->mysearch(),
//	'filter'=>$model,
	'columns'=>array(
		array(
		'header'=>'SN.',
		'class'=>'IndexColumn',
		),
		//'fees_id',
//		'fees_master_id',
//		'fees_desc_id',
		array(
			'name'=>'fees_details_name',
			'value'=>'$data->Rel_Fees_Details->fees_details_name',
		),
		array(
			'name'=>'fees_details_amount',
			'value'=>'$data->Rel_Fees_Details->fees_details_amount',
		),

		array(
			'class'=>'CButtonColumn',
			'template' => '{update}{delete}',
			'buttons'=>array(
				'delete' => array(
		                        'label'=>'Update Fees', // text label of the button
					'url'=>'Yii::app()->createUrl("feesMasterTransaction/delete", array("id"=>$data->fees_id))',
						),
		                'update' => array(
		                        'label'=>'Update Fees', // text label of the button
					'url'=>'Yii::app()->createUrl("feesMasterTransaction/update", array("id"=>$data->fees_id))',
		                       		),
					),
		),
	),
)); ?>
