<div class="student">
<?php

$this->breadcrumbs=array(
	'Student'=>array('admin'),
	$model->Rel_Stud_Info->student_first_name,
);

$this->menu=array(
	array('label'=>'', 'url'=>array('create'),'linkOptions'=>array('class'=>'Create','title'=>'Create')),
	array('label'=>'', 'url'=>array('update', 'id'=>$model->student_transaction_id),'linkOptions'=>array('class'=>'Edit','title'=>'Update')),
	array('label'=>'', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->student_transaction_id),'confirm'=>'Are you sure you want to delete this item?', 'class'=>'Delete','title'=>'Delete')),
	array('label'=>'', 'url'=>array('admin'),'linkOptions'=>array('class'=>'Manage','title'=>'Manage')),
	array('label'=>'', 'url'=>array('studentDocsTrans/create', 'id'=>$model->student_transaction_id),'linkOptions'=>array('id'=>'stud_doc_id','class'=>'Stud_doc','title'=>'Student Document')),
	array('label'=>'', 'url'=>array('studentAcademicRecordTrans/create', 'id'=>$model->student_transaction_id),'linkOptions'=>array('id'=>'stud_doc_id1','class'=>'Stud_qua','title'=>'Student Qualification')),

	array('label'=>'', 'url'=>array('TimeTable/StudentPersonalTimetable', 'student_id'=>$model->student_transaction_id),'linkOptions'=>array('id'=>'student_timetable','class'=>'faculty_master','title'=>'Show My Timetable')),


);
?>

<?php
        $tab_1 = $this->renderPartial('tabs/view_tab1', array('model'=>$model),true);
        $tab_2 = $this->renderPartial('tabs/view_tab2', array('model'=>$model),true);
        $tab_3 = $this->renderPartial('tabs/view_tab3', array('model'=>$model),true);
        $tab_4 = $this->renderPartial('tabs/view_tab4', array('model'=>$model),true);


         $this->widget('zii.widgets.jui.CJuiTabs', array(
                'tabs'=>array(
                   'Personal Info' =>array('content'=>$tab_1),
                   'Guardian Info' =>array('content'=>$tab_2),
                   'Other Info' =>array('content'=>$tab_3),
                   'Address Info' =>array('content'=>$tab_4),

                ),
                // additional javascript options for the tabs plugin
                'options'=>array(
                        'collapsible'=>true,
                ),
		'htmlOptions'=>array(
                     'class'=>'student-final-view'),
        ));
?>
<div>&nbsp;</div>
<div>&nbsp;</div>
<h4 class="final_view_doc">Attached Documents</h4>
<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'student-docs-final_view',
	'dataProvider'=>$docs_model->mysearch(),
//	'filter'=>$model,
	'columns'=>array(
		//'student_docs_trans_id',
		//'student_docs_trans_user_id',
		//'student_docs_trans_stud_docs_id',

		array(
                'name'=>'student_docs_trans_stud_docs_id',
                'type'=>'raw',
                'value'=>'CHtml::link(CHtml::encode($data->Rel_Stud_doc->student_docs_desc),"../../stud_docs/".$data->Rel_Stud_doc->student_docs_path, $htmlOptions=array("target"=>"_blank"))',

          	),

		array(
			'class'=>'CButtonColumn',
			'template' => '{delete}',
			'buttons'=>array(
                        
                        'delete' => array(
				'url'=>'Yii::app()->createUrl("studentDocsTrans/delete", array("id"=>$data->student_docs_trans_id))',
                        ),
		),
	    ),
	),
)); ?>
<div>&nbsp;</div>
<div>&nbsp;</div>
<h4 class="final_view_doc">Student Qualification</h4>


<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'student-academic-record-trans-grid',
	'dataProvider'=>$stu_record->mysearch(),
	//'filter'=>$model,
	'columns'=>array(
		//'student_academic_record_trans_id',
		//'student_academic_record_trans_stud_id',
		//'student_academic_record_trans_qualification_id',
		//'student_academic_record_trans_eduboard_id',
		//'student_academic_record_trans_record_trans_year_id',
		
		
		array('name' => 'student_academic_record_trans_qualification_id',
	              'value' => '$data->Rel_student_qualification->qualification_name',
                     ),
		array('name' => 'student_academic_record_trans_eduboard_id',
			'value' => '$data->Rel_student_eduboard->eduboard_name',
                     ),
		array('name' => 'student_academic_record_trans_record_trans_year_id',
			'value' => '$data->Rel_student_year->year',
                     ),
		array('name' => 'theory_mark_obtained',
			'value' => '$data->theory_mark_obtained',
                     ),
		array('name' => 'theory_mark_max',
			'value' => '$data->theory_mark_max',
                     ),
		array('name' => 'theory_percentage',
			'value' => '$data->theory_percentage',
                     ),
		array('name' => 'practical_mark_obtained',
			'value' => '$data->practical_mark_obtained',
                     ),
		array('name' => 'practical_mark_max',
			'value' => '$data->practical_mark_max',
                     ),
		array('name' => 'practical_percentage',
			'value' => '$data->practical_percentage',
                     ),
		
		array(
			'class'=>'CButtonColumn',
			'template' => '{update}{delete}',
	                'buttons'=>array(
			'view' => array(
				'url'=>'Yii::app()->createUrl("studentAcademicRecordTrans/view", array("id"=>$data->student_academic_record_trans_id))',
                        ),
			'update' => array(
				'url'=>'Yii::app()->createUrl("studentAcademicRecordTrans/update", array("id"=>$data->student_academic_record_trans_id))',
				'options'=>array('id'=>'update-qualification'),
                        ),
			'delete' => array(
				'url'=>'Yii::app()->createUrl("studentAcademicRecordTrans/delete", array("id"=>$data->student_academic_record_trans_id))',
                        ),
			),
		),
	),
)); ?>
</div>
<?php
$config = array( 
    'scrolling' => 'no',
    'autoDimensions' => false,
    'width' => '715',
    'height' => '205', 
    'titleShow' => false,
    'overlayColor' => '#000',
    'padding' => '0',
    'showCloseButton' => true,
    'onClose' => function() {
                return window.location.reload();
            },

// change this as you need
);


$this->widget('application.extensions.fancybox.EFancyBox', array('target'=>'#stud_doc_id', 'config'=>$config));

?>
<?php
$config = array( 
    'scrolling' => 'no',
    'autoDimensions' => false,
    'width' => '755',
    'height' => '420', 
    'titleShow' => false,
    'overlayColor' => '#000',
    'padding' => '0',
    'showCloseButton' => true,
    'onClose' => function() {
                return window.location.reload();
            },

// change this as you need
);


$this->widget('application.extensions.fancybox.EFancyBox', array('target'=>'#stud_doc_id1', 'config'=>$config));

?>


<?php
$config = array( 
    'scrolling' => 'no',
    'autoDimensions' => false,
    'width' => '755',
    'height' => '420', 
   'titleShow' => false,
    'overlayColor' => '#000',
    'padding' => '0',
    'showCloseButton' => true,
    'onClose' => function() {
                return window.location.reload();
            },

// change this as you need
);

$this->widget('application.extensions.fancybox.EFancyBox', array('target'=>'a#update-qualification', 'config'=>$config));

?>
