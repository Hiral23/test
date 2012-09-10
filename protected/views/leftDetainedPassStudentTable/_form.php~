<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'left-detained-pass-student-table-form',
	'enableAjaxValidation'=>true,
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'student_id'); ?>
		<?php echo $form->textField($model,'student_id'); ?>
		<span class="status">&nbsp;</span>
		<?php echo $form->error($model,'student_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'status_id'); ?>
		<?php echo $form->textField($model,'status_id'); ?>
		<span class="status">&nbsp;</span>
		<?php echo $form->error($model,'status_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'sem'); ?>
		<?php echo $form->textField($model,'sem'); ?>
		<span class="status">&nbsp;</span>
		<?php echo $form->error($model,'sem'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'academic_term_period_id'); ?>
		<?php echo $form->textField($model,'academic_term_period_id'); ?>
		<span class="status">&nbsp;</span>
		<?php echo $form->error($model,'academic_term_period_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'creation_date'); ?>
		<?php echo $form->textField($model,'creation_date'); ?>
		<?php echo $form->error($model,'creation_date'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'created_by'); ?>
		<?php echo $form->textField($model,'created_by'); ?>
		<?php echo $form->error($model,'created_by'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'oraganization_id'); ?>
		<?php echo $form->textField($model,'oraganization_id'); ?>
		<?php echo $form->error($model,'oraganization_id'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' :  'Save',array('class'=>'submit')); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->
