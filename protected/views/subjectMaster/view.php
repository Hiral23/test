<?php
$this->breadcrumbs=array(
	'Subject Masters'=>array('admin'),
	$model->subject_master_name,
);

$this->menu=array(
//        array('label'=>'List SubjectMaster', 'url'=>array('index')),
       array('label'=>'', 'url'=>array('create'),'linkOptions'=>array('class'=>'Create','title'=>'Create')),
       array('label'=>'', 'url'=>array('update', 'id'=>$model->subject_master_id),'linkOptions'=>array('class'=>'Edit','title'=>'Update')),
       array('label'=>'', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->subject_master_id),'confirm'=>'Are you sure you want to delete this item?', 'class'=>'Delete','title'=>'Delete')),
       array('label'=>'', 'url'=>array('admin'),'linkOptions'=>array('class'=>'Manage','title'=>'Manage')),
       array('label'=>'', 'url'=>array('SubjectSyllabus/create','id'=>$model->subject_master_id),'linkOptions'=>array('class'=>'syllabus','title'=>'Add Syllabus')),
       array('label'=>'', 'url'=>array('SubjectTextbook/create','id'=>$model->subject_master_id),'linkOptions'=>array('class'=>'textbook','title'=>'Add Text Books')),
       array('label'=>'', 'url'=>array('SubjectRefbook/create','id'=>$model->subject_master_id),'linkOptions'=>array('class'=>'refrencebook','title'=>'Add Refrence Book')),
       array('label'=>'', 'url'=>array('SubjectGuidelines/create', 'id'=>$model->subject_master_id),'linkOptions'=>array('class'=>'guidline','title'=>'Add Subject Guidelines')),
       array('label'=>'', 'url'=>array('SubjectTeachingSchema/create', 'id'=>$model->subject_master_id),'linkOptions'=>array('class'=>'teachingscheme','title'=>'Add Subject Teaching Scheme')),
       array('label'=>'', 'url'=>array('SubjectExaminationMark/create', 'id'=>$model->subject_master_id),'linkOptions'=>array('class'=>'examinationmark','title'=>'Add Subject Examination Mark')),
);

?>

<h1>View Subjects <?php //echo $model->subject_master_id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
//		'subject_master_id',
		'subject_master_name',
		'subject_master_code',
		'subject_master_alias',
		//'subject_master_type_id',
		array('name' => 'subject_master_type_id',
	              'value' => $model->Rel_sub_type->subject_type_name,
                     ),
		//'subject_master_organization_id',
		array('name' => 'subject_master_organization_id',
	              'value' => $model->Rel_org_id->organization_name,
                     ),
		//'subject_master_branch_id',
		array('name' => 'subject_master_branch_id',
	              'value' => $model->Rel_branch_id->branch_name,
                     ),
		//'subject_master_academic_terms_period_id',
		array('name' => 'subject_master_academic_terms_period_id',
	              'value' => $model->Rel_aca_term_period_id->academic_term_period,
                     ),
		//'subject_master_academic_terms_name_id',
		array('name' => 'subject_master_academic_terms_name_id',
	              'value' => $model->Rel_aca_term_name_id->academic_term_name 	,
                     ),
		array(
			'name'=>'subject_master_active',
			'value'=>($model->subject_master_active == 1) ?  "Active" : "Inactive",
		),
		
//		'subject_master_updated_user',
		array('name'=>'subject_master_updated_user',
			'value'=>User::model()->findByPk($model->subject_master_updated_user)->user_organization_email_id,
		),
		

	),
)); ?>

<div>&nbsp;</div>
<div>&nbsp;</div>
<h1>Syllabus</h1>
<?php echo CHtml::link('Add Other Syllabus',array('SubjectSyllabus/other_create','id'=>$model->subject_master_id)); ?>
<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'subject-syllabus-grid',	
	'dataProvider'=>$syllabus->search(),
	//'filter'=>$model,
	'columns'=>array(
			array(
		'header'=>'SN.',
		'class'=>'IndexColumn',
		),
		'topic_name',
		//'topic_description',
		'hours',
		
		array(
                'name'=>'actual_duration',
                'type'=>'raw',		
	        'value'=> '(isset($data->actual_duration) ?  date_format(date_create($data->actual_duration), "H") : "Not Set")',
	        ),

		'subject_syllabus_type',
		
		array(
			'class'=>'CButtonColumn',
			'template' => '{update}{delete}{Add Faculty Plan}{Add Actual Plan}{View Topic}',
			'buttons'=>array(
			'update' => array(
                               'url'=>'Yii::app()->createUrl("SubjectSyllabus/update", array("id"=>$data->id))',
                               //'options'=>array('id'=>'update-qualification'),
                       ),
                       'delete' => array(
                               'url'=>'Yii::app()->createUrl("SubjectSyllabus/delete", array("id"=>$data->id))',
				
                        ),
			 'Add Faculty Plan' => array(
                                'label'=>'Add Faculty Plan', // text label of the button
				'url'=>'Yii::app()->createUrl("SubjectSyllabus/facultyplancreate", array("id"=>$data->id))',
                               	 'imageUrl'=> Yii::app()->baseUrl.'/images/add_actual_plan.png',  // image URL of the button. If not set or false, a text link is used
                              	 'options' => array('class'=>'fees'), // HTML options for the button
                        ),
			 'Add Actual Plan' => array(
                                'label'=>'Add Actual Plan', // text label of the button
				'url'=>'Yii::app()->createUrl("SubjectSyllabus/actualcreate", array("id"=>$data->id))',
                               	 'imageUrl'=> Yii::app()->baseUrl.'/images/add_faculty_plan.png',  // image URL of the button. If not set or false, a text link is used
                              	 'options' => array('class'=>'fees'), // HTML options for the button
                        ),
			 'View Topic' => array(
                                'label'=>'View Topic Details', // text label of the button
				'url'=>'Yii::app()->createUrl("SubjectSyllabus/view", array("id"=>$data->id))',
                               	 'imageUrl'=> Yii::app()->baseUrl.'/images/view_topic_details.png',  // image URL of the button. If not set or false, a text link is used
                              	 'options' => array('class'=>'fees'), // HTML options for the button
                        ),
		
			

		),
	),
	),
	
)); ?>
<!-- Code for find total hours -->
<?php
$total_hour=0;
$total_actual_hour=0;
$s=SubjectSyllabus::model()->findAllByAttributes(array(),$condition='sub_id=:sid',$params = array(':sid' =>$model->subject_master_id,));
foreach($s as $s1)
{
	$total_hour+=$s1['hours'];
	$total_actual_hour+=$s1['actual_duration'];
}
?>
<div>&nbsp;</div>
<div>&nbsp;</div>
<h1>Total Subject Hours</h1>
<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		array('label' => 'GTU Total Hours',
	              'value' =>$total_hour,
                     ),
		array(
			'name'=>'Faculty Total Hours',
			'value'=>$total_actual_hour,
		),
	),
)); ?>
<div>&nbsp;</div>
<div>&nbsp;</div>
<h1>Text Books</h1>
<?php echo CHtml::link('Add Other Book',array('SubjectTextbook/other_create','id'=>$model->subject_master_id)); ?>
<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'subject-textbook-grid',
	'dataProvider'=>$textbook->search(),
	//'filter'=>$model,
	'columns'=>array(
			array(
		'header'=>'SN.',
		'class'=>'IndexColumn',
		),
		'isbn_no',
		'title',
		'subject_textbook_type',
		//'photo',
		array(
		'type'=>'raw',
                'value'=>  'CHtml::image("../book_images/" . $data->photo, "No Image",array("width"=>"20px","height"=>"20px"))',
                 ),
		
		array(
			'class'=>'CButtonColumn',
			'template' => '{update}{delete}',
			'buttons'=>array(
			'update' => array(
                               'url'=>'Yii::app()->createUrl("SubjectTextbook/update", array("id"=>$data->id))',
                               //'options'=>array('id'=>'update-qualification'),
                       ),
                       'delete' => array(
                               'url'=>'Yii::app()->createUrl("SubjectTextbook/delete", array("id"=>$data->id))',
				
                        ),
				
                        ),
			),

		),
	
)); ?>
<div>&nbsp;</div>
<div>&nbsp;</div>
<h1>Refrence Books</h1>
<?php echo CHtml::link('Add Other Book',array('SubjectRefbook/other_create','id'=>$model->subject_master_id)); ?>
<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'subject-refbook-grid',
	'dataProvider'=>$refbook->search(),
	//'filter'=>$model,
	'columns'=>array(
			array(
		'header'=>'SN.',
		'class'=>'IndexColumn',
		),
		'isbn_no',
		'title',
		'subject_refbook_type',

		//'photo',
		array(
		'type'=>'raw',
                'value'=>  'CHtml::image("../book_images/" . $data->photo, "No Image",array("width"=>"20px","height"=>"20px"))',
                 ),
		array(
			'class'=>'CButtonColumn',
			'template' => '{update}{delete}',
			'buttons'=>array(
			'update' => array(
                               'url'=>'Yii::app()->createUrl("SubjectRefbook/update", array("id"=>$data->id))',
                               //'options'=>array('id'=>'update-qualification'),
                       ),
                       'delete' => array(
                               'url'=>'Yii::app()->createUrl("SubjectRefbook/delete", array("id"=>$data->id))',
				
                        ),
				
                        ),
			),

		),
	
)); ?>



<div>&nbsp;</div>
<div>&nbsp;</div>
<h1>Subject Guidelines</h1>
<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'subject-guidelines-grid',
	'dataProvider'=>$sub_guidelines->mysearch(),
	//'filter'=>$model,
	'columns'=>array(
		array(
		'header'=>'SN.',
		'class'=>'IndexColumn',
		),
		array('name' => 'Guidelines',
	              'value' => '$data->guideline',
                     ),
		
		//'id',
		//'guideline',
		//'subject_id',
		//'created_by',
		//'creation_date',
		
		array(
			'class'=>'CButtonColumn',
			'template' => '{update}{delete}',
	                'buttons'=>array(
			
			'update' => array(
				'url'=>'Yii::app()->createUrl("SubjectGuidelines/update", array("id"=>$data->id))',
				'options'=>array('id'=>'update-qualification'),
                        ),
			'delete' => array(
				'url'=>'Yii::app()->createUrl("SubjectGuidelines/delete", array("id"=>$data->id))',
                        ),
			),
		),
	),
)); ?>
<div>&nbsp;</div>
<div>&nbsp;</div>
<h1>Subject Teaching Scheme</h1>
<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'subject-teaching-schema-grid',
	'dataProvider'=>$sub_tscheme->mysearch(),
	//'filter'=>$model,
	'columns'=>array(
		array(
		'header'=>'SN.',
		'class'=>'IndexColumn',
		),
		array('name' => 'Theory Credit',
	              'value' => '$data->theory_credit',
                     ),
		array('name' => 'Tutorial Credit',
	              'value' => '$data->tutorial_credit',
                     ),
		array('name' => 'Practical Credit',
	              'value' => '$data->practical_credit',
                     ),
		
		//'id',
		//'subject_id',
		//'created_by',
		//'creation_date',
		
		array(
			'class'=>'CButtonColumn',
			'template' => '{update}{delete}',
	                'buttons'=>array(
			
			'update' => array(
				'url'=>'Yii::app()->createUrl("subjectTeachingSchema/update", array("id"=>$data->id))',
				'options'=>array('id'=>'update-qualification'),
                        ),
			'delete' => array(
				'url'=>'Yii::app()->createUrl("subjectTeachingSchema/delete", array("id"=>$data->id))',
                        ),
			
			),
		),
	),
)); ?>
<div>&nbsp;</div>
<div>&nbsp;</div>
<h1>Examination Marks</h1>
<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'subject-examination-mark-grid',
	'dataProvider'=>$sub_exam->mysearch(),
	//'filter'=>$model,
	'columns'=>array(
		array(
		'header'=>'SN.',
		'class'=>'IndexColumn',
		),
		array('name' => 'University Mark',
	              'value' => '$data->university_mark',
                     ),
		array('name' => 'Midsem Mark',
	              'value' => '$data->midsem_mark',
                     ),
		array('name' => 'Practical Mark',
	              'value' => '$data->practical_mark',
                     ),
		
		//'id',
		//'subject_id',
		//'created_by',
		//'creation_date',
		
		array(
			'class'=>'CButtonColumn',
			'template' => '{update}{delete}',
	                'buttons'=>array(
			
			'update' => array(
				'url'=>'Yii::app()->createUrl("SubjectExaminationMark/update", array("id"=>$data->id))',
				'options'=>array('id'=>'update-qualification'),
                        ),
			'delete' => array(
				'url'=>'Yii::app()->createUrl("SubjectExaminationMark/delete", array("id"=>$data->id))',
                        ),
			
			),
		),
	),
)); ?>


