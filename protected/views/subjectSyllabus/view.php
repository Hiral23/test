<?php
$this->breadcrumbs=array(
	'Subject Master'=>array('/SubjectMaster/view','id'=>$model->sub_id),
	$model->topic_name,
);

$this->menu=array(
	//array('label'=>'List SubjectSyllabus', 'url'=>array('index')),
	//array('label'=>'Create SubjectSyllabus', 'url'=>array('create')),
//	array('label'=>'Update SubjectSyllabus', 'url'=>array('update', 'id'=>$model->id)),
//	array('label'=>'Delete SubjectSyllabus', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
//	array('label'=>'Manage SubjectSyllabus', 'url'=>array('admin')),
);
?>

<h1>GTU Syllabus <?php //echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		//'id',
		//'sub_id',
		array('name' => 'subject',
	              'value' => $model->Rel_sub_nm->subject_master_name,
                     ),
		'topic_name',
		'topic_description',
		'hours',
		//'created_by',
		//'created_date',
	),
)); ?>
<div>&nbsp;</div>
<div>&nbsp;</div>
<h1>Faculty Plan</h1>
<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		
		array('name' => 'Teaching Method',
	              'value' =>($model->teaching_method == 0) ? 'Not Set' : $model->Rel_sub_tid->teaching_methods_name,
                ),
		
		array(
                'name'=>'start_date',
                'type'=>'raw',		
                'value'=>($model->start_date == 0000-00-00) ? 'Not Set' : date_format(new DateTime($model->start_date), 'd-m-Y'),
	        ),
		array(
                'name'=>'end_date',
                'type'=>'raw',		
                'value'=>($model->end_date == 0000-00-00) ? 'Not Set' :date_format(new DateTime($model->end_date), 'd-m-Y'),
	        ),
		array(
                'name'=>'duration',
                'type'=>'raw',		
                'value'=>($model->duration == 00-00-00) ? 'Not Set' : date_format(new DateTime($model->duration), "H:i:s"),
	        ),
		
		
		
	),
)); ?>

<div>&nbsp;</div>
<div>&nbsp;</div>
<h1>Actual Delivered Plan</h1>
<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
				
		array(
                'name'=>'actual_start_date',
                'type'=>'raw',		
                'value'=>($model->actual_start_date == 0000-00-00) ? 'Not Set' :date_format(new DateTime($model->actual_start_date), 'd-m-Y'),
	        ),
		array(
                'name'=>'actual_end_date',
                'type'=>'raw',		
                'value'=>($model->actual_end_date == 0000-00-00) ? 'Not Set' :date_format(new DateTime($model->actual_end_date), 'd-m-Y'),
	        ),
		array(
                'name'=>'actual_duration',
                'type'=>'raw',		
                'value'=>($model->actual_duration == 00-00-00) ? 'Not Set' : date_format(new DateTime($model->actual_duration), "H:i:s"),
	        ),
		
		array(
                'name'=>'actual_remarks',
                'type'=>'raw',		
                'value'=>($model->actual_remarks == "") ? 'Not Set' : $model->actual_remarks,
	        ),
		array(
                'name'=>'deliver_topic',
                'type'=>'raw',		
                'value'=>($model->deliver_topic == "") ? 'Not Set' : $model->deliver_topic,
	        ),
		/*
		'actual_start_date',
		'actual_end_date',*/
		//'actual_duration',
		//'actual_remarks',
		
	),
)); ?>

