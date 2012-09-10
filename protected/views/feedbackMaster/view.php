<?php
$this->breadcrumbs=array(
	'Feedback Masters'=>array('admin'),
	$model->feedback_name,
);

$this->menu=array(
//	array('label'=>'', 'url'=>array('index')),
	array('label'=>'', 'url'=>array('create'),'linkOptions'=>array('class'=>'Create','title'=>'Create')),
	array('label'=>'', 'url'=>array('update', 'id'=>$model->id),'linkOptions'=>array('class'=>'Edit','title'=>'Update')),
	array('label'=>'', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?','class'=>'Delete','title'=>'Delete')),
	array('label'=>'', 'url'=>array('admin'),'linkOptions'=>array('class'=>'Manage','title'=>'Manage')),
	array('label'=>'', 'url'=>array('/feedbackDetails/create', 'id'=>$model->id),'linkOptions'=>array('class'=>'details','title'=>'Add Details')),

);
?>

<h1>View Feedback Master <?php //echo $model->id; ?></h1>



<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
//		'id',
		'feedback_start_date',
		'feedback_end_date',
		'feedback_name',
//		'feedback_emp_id',
		array(
                'name'=>'feedback_emp_id',
                'value'=> $model->Rel_emp_id->employee_first_name ,
          ),			

//		'feedback_branch_id',
		array(
                'name'=>'feedback_branch_id',
                'value'=> $model->Rel_branch_id->branch_name ,
          ),			

//		'feedback_academic_term_id',
		array(
                'name'=>'feedback_academic_term_id',
                'value'=> $model->Rel_academic_term_id->academic_term_name ,
          ),
		array(
                'name'=>'feedback_academic_term_period_id',
                'value'=>$model->Rel_academic_term_period_id->academic_term_period,
          ),			

//		'feedback_subject_id',
		array(
                'name'=>'feedback_subject_id',
                'value'=> $model->Rel_subject_id->subject_master_name ,
          ),			
		
//		'feedback_department_id',
		array(
                'name'=>'feedback_department_id',
                'value'=> $model->Rel_department_id->department_name ,
          ),			
		'remark',
	),
)); ?>


<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'feedback-details-table-grid',
	'dataProvider'=>$feedback_details->mysearch(),
//	'filter'=>$model,
	'columns'=>array(
		'question',
		'remark',
//		'fees_id',
//		'fees_master_id',
//		'fees_desc_id',
/*		array(
			'name'=>'fees_details_name',
			'value'=>'$data->Rel_Fees_Details->fees_details_name',
		),
		array(
			'name'=>'fees_details_amount',
			'value'=>'$data->Rel_Fees_Details->fees_details_amount',
		),
*/
		array(
			'class'=>'CButtonColumn',
			'template' => '{update}{delete}',
			'buttons'=>array(
			'update' => array(
				'url'=>'Yii::app()->createUrl("feedbackDetails/update", array("id"=>$data->id))',
                        ),
			'delete' => array(
				'url'=>'Yii::app()->createUrl("feedbackDetails/delete", array("id"=>$data->id))',
                        ),
			),
		),
	),
)); ?>
