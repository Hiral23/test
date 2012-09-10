<?php
$this->breadcrumbs=array(
	'Student'=>array('admin'),
	$model->Rel_Stud_Info->student_first_name,
	'Update',
);

$this->menu=array(
	array('label'=>'', 'url'=>array('create'),'linkOptions'=>array('class'=>'Create','title'=>'Create')),
	array('label'=>'', 'url'=>array('final_view', 'id'=>$model->student_transaction_id),'linkOptions'=>array('class'=>'View','title'=>'View')),
	array('label'=>'', 'url'=>array('admin'),'linkOptions'=>array('class'=>'Manage','title'=>'Manage')),
	//array('label'=>'', 'url'=>array('studentDocsTrans/create', 'id'=>$model->student_transaction_id),'linkOptions'=>array('id'=>'stud_doc_id1','class'=>'Stud_doc','title'=>'Student Document')),
	//array('label'=>'', 'url'=>array('studentAcademicRecordTrans/create', 'id'=>$model->student_transaction_id),'linkOptions'=>array('id'=>'stud_doc_id','class'=>'Stud_qua','title'=>'Student Qualification')),
);
?>
<?php
$config = array( 
    'scrolling' => 'no',
    'autoDimensions' => false,
    'width' => '715',
    'height' => '420', 
 //   'titleShow' => false,
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
    'width' => '715',
    'height' => '205', 
 //   'titleShow' => false,
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
<h1>Update Student <?php //echo $model->student_transaction_id; ?></h1>

<?php echo $this->renderPartial('_form', array('model'=>$model,'info'=>$info,'photo'=>$photo,'address'=>$address,'lang'=>$lang)); ?>
