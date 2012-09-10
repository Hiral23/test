<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'employee-sms-email-details-form',
	'enableAjaxValidation'=>true,
	'clientOptions'=>array('validateOnSubmit'=>true),
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php //echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'department_id'); ?>
		 <?php echo $form->dropDownList($model,'department_id',Department::items(), array('empty' => '-----------Select---------','tabindex'=>6)); ?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'department_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'branch_id'); ?>
		<?php echo $form->dropDownList($model,'branch_id',Branch::items(), array('empty' => '-----------Select---------','tabindex'=>8)); ?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'branch_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'shift_id'); ?>
		<?php echo $form->dropDownList($model,'shift_id',Shift::items(), array('empty' => '-----------Select---------','tabindex'=>7)); ?><span class="status">&nbsp;</span>
		<?php echo $form->error($model,'shift_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'message_email_text'); ?>
		<?php echo $form->textArea($model,'message_email_text',array('rows'=>6, 'cols'=>50)); ?>
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

	<!--<div class="row">
		<?php echo $form->labelEx($model,'created_by'); ?>
		<?php echo $form->textField($model,'created_by'); ?>
		<?php echo $form->error($model,'created_by'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'creation_date'); ?>
		<?php echo $form->textField($model,'creation_date'); ?>
		<?php echo $form->error($model,'creation_date'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'employee_id'); ?>
		<?php echo $form->textField($model,'employee_id'); ?>
		<?php echo $form->error($model,'employee_id'); ?>
	</div>-->

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save',array('class'=>'submit')); ?>
	</div>


<?php $this->endWidget(); ?>

</div><!-- form -->
