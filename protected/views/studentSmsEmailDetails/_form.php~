<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'student-sms-email-details-form',
	'enableAjaxValidation'=>true,
	'clientOptions'=>array('validateOnSubmit'=>true),
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php //echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'branch_id'); ?>
		<?php echo $form->dropDownList($model,'branch_id',Branch::items(), array('empty' => '-----------Select---------','tabindex'=>15)); ?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'branch_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'academic_period_id'); ?>
		<?php
			echo $form->dropDownList($model,'academic_period_id',AcademicTermPeriod::items(),
			array(
			'prompt' => '----------Select--------',
			'ajax' => array(
			'type'=>'POST', 
			'url'=>CController::createUrl('StudentSmsEmailDetails/getItemName'), 
			'update'=>'#StudentSmsEmailDetails_academic_name_id', //selector to update
			))); 
			 
			?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'academic_period_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'academic_name_id'); ?>
		<?php 			
			if(isset($model->academic_name_id))
				echo $form->dropDownList($model,'academic_name_id', CHtml::listData(AcademicTerm::model()->findAll(array('condition'=>'academic_term_id='.$model->academic_name_id)), 'academic_term_id', 'academic_term_name'));
			else
				echo $form->dropDownList($model,'academic_name_id',array()); 
		?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'academic_name_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'division_id'); ?>
		<?php echo $form->dropDownList($model,'division_id',Division::items(), array('empty' => '-----------Select---------','tabindex'=>15)); ?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'division_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'shift_id'); ?>
		<?php echo $form->dropDownList($model,'shift_id',Shift::items(), array('empty' => '-----------Select---------','tabindex'=>7)); ?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'shift_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'message_email_text'); ?>
		<?php echo $form->textArea($model,'message_email_text',array('rows'=>6, 'cols'=>50)); ?>
		<span class="status">&nbsp;</span>
		<?php echo $form->error($model,'message_email_text'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'email_sms_status'); ?>
		<?php //echo $form->textField($model,'email_sms_status'); ?>
		<b>SMS</b>
		<?php echo $form->radioButton($model, 'email_sms_status', array(
		    'value'=>1,
		    'uncheckValue'=>null
		));?>
		<br/>
		<b>EMAIL</b>
		<?php echo $form->radioButton($model, 'email_sms_status', array(
		    'value'=>2,
		    'uncheckValue'=>null
		));?>
		<?php echo $form->error($model,'email_sms_status'); ?>
	</div>

	

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save',array('class'=>'submit')); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->
