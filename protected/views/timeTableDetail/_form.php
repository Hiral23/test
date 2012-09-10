<script>
$('#TimeTableDetail_branch_id').change(function () {
	$('#TimeTableDetail_acdm_name_id').val('');
	$('#TimeTableDetail_subject_type').val('');	
});
</script>
<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'time-table-detail-form',
	'enableAjaxValidation'=>true,
	'clientOptions'=>array('validateOnSubmit'=>true),
	));

?>
<?php 

$org_id=Yii::app()->user->getState('org_id');
echo $form->hiddenField($model,'day',array('value'=>$_REQUEST['day']));
echo $form->hiddenField($model,'lec',array('value'=>$_REQUEST['lec']));
echo $form->hiddenField($model,'acdm_period_id',array('value'=>$_REQUEST['acdm_period_id']));
echo $form->hiddenField($model,'timetable_id',array('value'=>$_REQUEST['timetable_id']));
$timetableid = $_REQUEST['timetable_id'];
//echo $timetableid;

?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		
		<?php echo $form->labelEx($model,'branch_id'); ?>
		<?php 
		
			echo $form->dropDownList($model,'branch_id',Branch::items(), array('empty' => '---------------Select-------------','tabindex'=>1));

 ?>
		<span class="status">&nbsp;</span>		
		<?php echo $form->error($model,'branch_id'); ?>
	</div>
	

	<div class="row">
		<?php echo $form->labelEx($model,'acdm_name_id'); ?>
		<?php //echo $form->textField($model,'acdm_name_id'); ?>
		
		<?php
			echo $form->dropDownList($model,'acdm_name_id',
				CHtml::listData(AcademicTerm::model()->findAll(array('condition'=>'academic_term_period_id='.$_REQUEST['acdm_period_id'].' and academic_term_organization_id='.$org_id)),'academic_term_id','academic_term_name'),
				array(
				'prompt' => '---------------Select-------------','tabindex'=>2,
				'ajax' => array(
				'type'=>'POST', 
				'url'=>CController::createUrl('TimeTableDetail/getItemName1'),	 	
				'update'=>'#TimeTableDetail_division_id', //selector to update
				
				)));
			 
			 
		?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'acdm_name_id'); ?>
	</div>

	
	

	<div class="row">
		<?php echo $form->labelEx($model,'division_id'); ?>
		<?php 
			
			if(isset($model->division_id))
				echo $form->dropDownList($model,'division_id', CHtml::listData(Division::model()->findAll(array('condition'=>'branch_id='.$model->branch_id.' and academic_name_id='.$model->acdm_name_id.' and division_organization_id='.$org_id)), 'division_id', 'division_code'));
			else
				echo $form->dropDownList($model,'division_id',array('prompt' => '---------------Select-------------'),array('tabindex'=>3)); 
		?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'division_id'); ?>
	</div>
	<div class="row">
	       	 <?php echo $form->labelEx($model,'subject_type'); ?>
              	 
		<?php
			
			echo $form->dropDownList($model,'subject_type',SubjectType::items(),			
			array(
			'prompt' => '---------------Select-------------','tabindex'=>4,
			'ajax' => array(
			'type'=>'POST', 
			'url'=>CController::createUrl('TimeTableDetail/getItemName'),
			'dataType'=>'json',
                	'success'=>'function(data) {			
			  if(data.sub_type=="Theory")
			  {
				$("#TimeTableDetail_batch_id").val("");				
				$("#TimeTableDetail_batch_id").attr("disabled", true);
        		  }
			  else
			  {
				
				$("#TimeTableDetail_batch_id").attr("disabled", false);
				$("#TimeTableDetail_batch_id").html(data.batch);	
			   }
			  		 
                          $("#TimeTableDetail_subject_id").html(data.sub);
			  $("#TimeTableDetail_room_id").html(data.room);			  
			  
                        }', 			
			
				
			))); 
			 
		?><span class="status">&nbsp;</span>
              <?php echo $form->error($model,'subject_type'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'subject_id'); ?>
		<?php 			
			if(isset($model->subject_id))
				echo $form->dropDownList($model,'subject_id', CHtml::listData(SubjectMaster::model()->findAll(array('condition'=>'subject_master_type_id='.$model->subject_type.' and subject_master_branch_id='.$model->branch_id.' and subject_master_academic_terms_name_id='.$model->acdm_name_id.' and subject_master_organization_id='.$org_id)), 'subject_master_id', 'subject_master_name'));
			else
				echo $form->dropDownList($model,'subject_id',array('prompt' => '---------------Select-------------'),array('tabindex'=>5)); 
		?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'subject_id'); ?>
	</div>
	
	<div class="row">
		<?php echo $form->labelEx($model,'batch_id'); ?>
		
		<?php 			
			if(isset($model->batch_id))
			  {
				if($model->subject_type==2)
				echo $form->dropDownList($model,'batch_id', CHtml::listData(Batch::model()->findAll(array('condition'=>'div_id='.$model->division_id.' and batch_organization_id='.$org_id)), 'batch_id', 'batch_code'));
				else
				echo $form->dropDownList($model,'batch_id',array('prompt' => '---------------Select-------------'),array('tabindex'=>6));
		          }
			else
				echo $form->dropDownList($model,'batch_id',array('prompt' => '---------------Select-------------'),array('tabindex'=>6)); 
		
		?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'batch_id'); ?>
	</div>

	
	<div class="row" id="room">
		<?php echo $form->labelEx($model,'room_id'); ?>
		<?php 			
			if(isset($model->room_id))
				echo $form->dropDownList($model,'room_id',CHtml::listData(RoomDetailsMaster::model()->findAll(array('condition'=>'id='.$model->room_id.' and room_details_organization_id='.$org_id)), 'id', 'room_name'));
			else
				echo $form->dropDownList($model,'room_id',array('prompt' => '---------------Select-------------'),array('tabindex'=>7)); 
		?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'room_id'); ?>
	</div>	
	<div class="row buttons">
		<?php 
		

		echo CHtml::button('Go Back' , array('class'=>'submit','name'=>'goback','submit' => array('TimeTable/CreateTable','id'=>$timetableid),'tabindex'=>8));		
		echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save',array('class'=>'submit','name'=>'create','tabindex'=>9));

		
?>
	</div>
	
	

<?php $this->endWidget(); ?>

</div><!-- form -->
