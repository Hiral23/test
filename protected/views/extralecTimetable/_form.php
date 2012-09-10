<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'extralec-timetable-form',
	'enableAjaxValidation'=>true,
)); 

?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'subject_id'); ?>
		<?php echo $form->dropDownList($model,'subject_id',SubjectMaster::items(), array('empty' => '-----------Select---------','tabindex'=>16)); ?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'subject_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'faculty_id'); ?>
		<?php echo $form->dropDownList($model,'faculty_id',EmployeeInfo::items(), array('empty' => '-----------Select---------','tabindex'=>16)); ?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'faculty_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'branch_id'); ?>
		<?php echo $form->dropDownList($model,'branch_id',Branch::items(), array('empty' => '-----------Select---------','tabindex'=>16)); ?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'branch_id'); ?>
	</div>
	
	<div class="row">
		<?php echo $form->labelEx($model,'division_id'); ?>
		<?php echo $form->dropDownList($model,'division_id',Division::items(), array('empty' => '-----------Select---------','tabindex'=>16));?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'division_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'room_id'); ?>
		<?php echo $form->dropDownList($model,'room_id',RoomDetailsMaster::items(), array('empty' => '-----------Select---------','tabindex'=>16));?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'room_id'); ?>
	</div>
		
	<div class="row">
		<?php echo $form->labelEx($model,'day'); ?>
		<?php echo $form->dropDownList($model,'day',array("1"=>"Monday","2"=>"Tuesday","3"=>"Wednesday","4"=>"Thursday","5"=>"Friday","6"=>"Saturday"), array('empty' => '-----------Select---------','tabindex'=>16)); ?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'day'); ?>
	</div>
	
	<div class="row">
		<?php echo $form->labelEx($model,'lec_start_time'); ?>
		<?php
		 $this->widget('application.extensions.jui_timepicker.JTimePicker', array(
		    'model'=>$model,
		     'attribute'=>'lec_start_time',
		     // additional javascript options for the date picker plugin
		     'options'=>array(
			 'showPeriod'=>true,
			 ),
		     'htmlOptions'=>array('size'=>8,'maxlength'=>8 ),
		 ));
		?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'lec_start_time'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'lec_end_time'); ?>
		<?php
		 $this->widget('application.extensions.jui_timepicker.JTimePicker', array(
		    'model'=>$model,
		     'attribute'=>'lec_end_time',
		     // additional javascript options for the date picker plugin
		     'options'=>array(
			 'showPeriod'=>true,
			 ),
		     'htmlOptions'=>array('size'=>8,'maxlength'=>8 ),
		 ));
		?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'lec_end_time'); ?>
	</div>
	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save', array('class'=>'submit')); 
		      echo CHtml::button('Go Back', array('class'=>'submit','submit' => array('timeTable/admin')));		
		?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->




